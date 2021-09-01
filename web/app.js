// Require the framework and instantiate it
const fastify = require('fastify')({
    logger: true
  })
  
  // Declare a route
  fastify.get('/', function (request, reply) {
    reply.send({ hello: 'docker' })
  })
  
  // Run the server!
//  fastify.listen(3000, function (err, address) {
    //docker에서 수행하려면 호스트네임을 0.0.0.0으로 바꿔줘야 함
    fastify.listen(3000, '0.0.0.0', function (err, address) {
    if (err) {
      fastify.log.error(err)
      process.exit(1)
    }
    fastify.log.info(`server listening on ${address}`)
  })