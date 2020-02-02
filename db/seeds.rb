require_relative( "../models/tag.rb" )
require_relative( "../models/transaction.rb" )
require_relative( "../models/merchant.rb" )
require("pry-byebug")

Tag.all()
Merchant.all()
Transaction.all()

@tesco = Merchant.new({
  'name' => 'Tesco',
  'active' => true,
  'logo' => 'https://cdn.iconscout.com/icon/free/png-256/tesco-282827.png'
  })

  @tesco.save()

  @lidl = Merchant.new({
    'name' => 'Lidl',
    'active' => true,
    'logo' => 'https://cdn.iconscout.com/icon/free/png-256/lidl-282519.png'
    })

    @lidl.save()


  @groceries = Tag.new({
    'label' => 'groceries',
    'active' => true,
    'logo' => 'https://www.shareicon.net/data/256x256/2016/08/19/817434_food_512x512.png'
    })

    @groceries.save()

    @transaction1 = Transaction.new({
      'merchant_id' => @tesco.id,
      'tag_id' => @groceries.id,
      'amount' => 11.20
      })

      @transaction1.save()

      @transaction2 = Transaction.new({
        'merchant_id' => @tesco.id,
        'tag_id' => @groceries.id,
        'amount' => 133.20
        })

        @transaction2.save()

        @transaction3 = Transaction.new({
          'merchant_id' => @lidl.id,
          'tag_id' => @groceries.id,
          'amount' => 88
          })

          @transaction3.save()


        binding.pry
        nil
