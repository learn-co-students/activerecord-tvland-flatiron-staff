class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def build_network(options)
    network = Network.create(options)
    self.network_id = network.id
    self.save
    network
  end
end