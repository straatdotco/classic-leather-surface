const Accordion = {
  mounted() {
    const element = this.el;
    const trigger = element.children[0];
    const toggableElements = element.querySelectorAll(".toggable");
    trigger.addEventListener("click", () => {
      toggableElements.forEach(el => {
        el.classList.toggle("active")
      })
    });
  },
};

export { Accordion };
