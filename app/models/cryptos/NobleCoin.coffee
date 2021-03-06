class @NobleCoin extends @BaseCrypto
  """
  This class define all the informations needed for Noblecoin
  """
  @code = "NOBL"

  constructor: ->
    super
    @api_url = "http://cryptexplorer.com/chain/Noblecoin/q/addressbalance/"
    @lambda_balance = (result) -> +result.content

  set_balance: ->
    url = "#{@api_url}#{@address}"
    super url, @lambda_balance

  get_value: ->
    @get_balance() * 0.00073
