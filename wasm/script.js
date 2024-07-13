WebAssembly.instantiateStreaming(fetch("tarai.wasm")).then((obj) => {
  console.log(obj.instance.exports.tarai(12,6,0));
});