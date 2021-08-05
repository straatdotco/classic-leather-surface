const generateAutoPlay = (instance, time) => {
  let interval = setInterval(() => {
    instance.next();
  }, time);

  return () => {
    clearInterval(interval);

    interval = setInterval(() => {
      instance.next();
    }, time);
  };
};

const Carousel = {
  mounted() {
    const dataset = this.el.dataset;
    const autoPlay = dataset.hasOwnProperty("autoPlay");
    const instance = M.Carousel.init(this.el, {
      fullWidth: true,
      indicators: true,
    });

    instance.options.onCycleTo = autoPlay
      ? generateAutoPlay(instance, +dataset.autoPlaySpeed)
      : undefined;
  },
};

export { Carousel };
