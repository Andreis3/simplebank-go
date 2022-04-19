package util

// Constants for all supported currencies
const (
	USD = "USD"
	EUR = "EUR"
	BRL = "BRL"
)

// IsSupportedCurrency returns true if the currency is supported
func IsSupportedCurrency(currency string) bool {
	switch currency {
	case USD, EUR, BRL:
		return true
	default:
		return false
	}
}
