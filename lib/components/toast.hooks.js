const Toast = {
  updated() {
    const {
      content,
      duration,
    } = this.el.dataset;
    if (content) {
      M.toast({
        html: content,
        displayLength: duration,
      })
    }
  }
};

export { Toast };
