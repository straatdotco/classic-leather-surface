const TextField = {
  /**
   * Why is this needed?
   * =========================
   * The MaterialUI behaviour is to always keep the label on top in some case, for example, when
   * the input has a start adornment. MaterializeCSS js code moves the label down regardless
   * of this. As we can not get rid of materialize js code, with this observer we force
   * the "active" class to be present even when something else tries to remove it
   *
   * How to improve it?
   * ========================
   * Put our own code move the label depending on focus that will consider this use case
   */
  mounted() {
    const targetNode = this.el.querySelector('label');
    const dataset = targetNode ? targetNode.dataset : {};

    if (targetNode && dataset.hasOwnProperty('forceActive')) {
      const callback = function(mutationsList, observer) {
          for(const mutation of mutationsList) {
              if (mutation.type === 'attributes' && mutation.attributeName === "class" && !mutation.target.classList.contains('active')) {
                mutation.target.classList.add('active');
              }
          }
      };

      const observer = new MutationObserver(callback);
      observer.observe(targetNode, { attributes: true, attributeOldValue: true });
    }
  }
};

export { TextField };