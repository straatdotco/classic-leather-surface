const Select = {
  mounted() {
    const selectEl = this.el.querySelector("select");
    M.FormSelect.init(selectEl);
  },
};

export { Select };
