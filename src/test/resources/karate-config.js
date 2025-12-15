function fn() {
  var config = {
    baseUrl: 'https://serverest.dev',
    usuarios: karate.read('classpath:data/usuarios.json')
  };
  return config;
}
