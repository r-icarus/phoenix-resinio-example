FROM ricarus/rpi-raspbian-elixir:latest
ADD . /phoenix_app
ENV PATH /elixir/bin:$PATH
ENV LC_ALL en_US.UTF-8
ENV MIX_ENV prod
ENV PORT 80
EXPOSE 80
WORKDIR /phoenix_app
RUN mix deps.get
RUN mix deps.compile
RUN mix compile.protocols
CMD elixir -pa _build/prod/consolidated -S mix phoenix.server
#--no-deps-check --no-compile --no-halt
