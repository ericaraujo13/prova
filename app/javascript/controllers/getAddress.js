const getAddress = async ($data, zip) => {
  if(zip.length < 9) return

  $data.loading = true
  const response  = await fetch(`https://viacep.com.br/ws/${zip.replace(/\s/g, '')}/json`)
  if(response.status !== 200) {
    clearFields($data)
    $data.loading = false
    $data.error = true
    return
  }

  const { localidade, uf, logradouro, bairro, complemento, ibge } = await response.json()

  $data.city = localidade
  $data.state = uf
  $data.public_place = logradouro
  $data.neighborhood = bairro
  $data.ibge_code = ibge
  $data.complement = complemento
  $data.loading = false
  $data.error = false
}

const clearFields = (data) => {
  data.city = ''
  data.public_place = ''
  data.state = ''
  data.district = ''
  data.ibge_code = ''
  data.complement = ''
  data.neighborhood = ''
}

export default getAddress