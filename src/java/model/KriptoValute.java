package model;

/**
 *
 * @author kingf
 */

public class KriptoValute {
    private String id;
    private String name;
    private String symbol;
    private int rank;
    private double price_usd;
    private double market_cap_usd;
    
    private double price_eur;
    private double market_cap_eur;
    
    private double price_cny;
    private double market_cap_cny;
    
    private double price_btc;
    private double $24HVolumeMoney;
    
    private double available_supply;
    private double total_supply;
    private int maxSupply;
    private double percent_change_1h;
    private double percent_change_24h;
    private double percent_change_7d;
    private int lastUpdated;
    
    public KriptoValute(){
        
    }
    
    public KriptoValute(String id, String name, String symbol, int rank, 
            double price_usd, double price_btc, double $24HVolumeMoney, 
            double market_cap_usd, double available_supply, double total_supply, 
            int maxSupply, double percent_change_1h, double percent_change_24h, 
            double percent_change_7d, int lastUpdated) {
        this.id = id;
        this.name = name;
        this.symbol = symbol;
        this.rank = rank;
        this.price_usd = price_usd;
        this.price_btc = price_btc;
        this.$24HVolumeMoney = $24HVolumeMoney;
        this.market_cap_usd = market_cap_usd;
        this.available_supply = available_supply;
        this.total_supply = total_supply;
        this.maxSupply = maxSupply;
        this.percent_change_1h = percent_change_1h;
        this.percent_change_24h = percent_change_24h;
        this.percent_change_7d = percent_change_7d;
        this.lastUpdated = lastUpdated;
    }

    public double getMarket_cap_eur() {
        return market_cap_eur;
    }

    public double getMarket_cap_cny() {
        return market_cap_cny;
    }
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public double getPrice_usd() {
        return price_usd;
    }

    public void setPrice_usd(double USDprice) {
        this.price_usd = USDprice;
    }
    
    public double getPrice_eur() {
        return price_eur;
    }

    public void setPrice_eur(double price_eur) {
        this.price_eur = price_eur;
    }

    public void setMarket_cap_eur(int market_cap_eur) {
        this.market_cap_eur = market_cap_eur;
    }

    public double getPrice_cny() {
        return price_cny;
    }

    public void setPrice_cny(double price_cny) {
        this.price_cny = price_cny;
    }

    public void setMarket_cap_cny(int market_cap_cny) {
        this.market_cap_cny = market_cap_cny;
    }

    public double getPrice_btc() {
        return price_btc;
    }

    public void setPrice_btc(double btcPrice) {
        this.price_btc = btcPrice;
    }

    public double get$24HVolumeMoney() {
        return $24HVolumeMoney;
    }

    public void set$24HVolumeMoney(double $24HVolumeMoney) {
        this.$24HVolumeMoney = $24HVolumeMoney;
    }

    public double getMarket_cap_usd() {
        return market_cap_usd;
    }

    public void setMarket_cap_usd(double marketCap) {
        this.market_cap_usd = marketCap;
    }

    public double getAvailable_supply() {
        return available_supply;
    }

    public void setAvailable_supply(double availableSupply) {
        this.available_supply = availableSupply;
    }

    public double getTotal_supply() {
        return total_supply;
    }

    public void setTotal_supply(double totalSupply) {
        this.total_supply = totalSupply;
    }

    public int getMaxSupply() {
        return maxSupply;
    }

    public void setMaxSupply(int maxSupply) {
        this.maxSupply = maxSupply;
    }

    public double getPercent_change_1h() {
        return percent_change_1h;
    }

    public void setPercent_change_1h(double $1Hchange) {
        this.percent_change_1h = $1Hchange;
    }

    public double getPercent_change_24h() {
        return percent_change_24h;
    }

    public void setPercent_change_24h(double $24Hchange) {
        this.percent_change_24h = $24Hchange;
    }

    public double getPercent_change_7d() {
        return percent_change_7d;
    }

    public void setPercent_change_7d(double $7dChange) {
        this.percent_change_7d = $7dChange;
    }

    public int getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(int lastUpdated) {
        this.lastUpdated = lastUpdated;
    }
    
    
}
