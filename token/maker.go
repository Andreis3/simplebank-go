package token

import "time"

// Maker is an interface for managing tokens.
type Maker interface {
	// CreateToken creates a new token for a specific username and duration.
	createToken(username string, duration time.Duration) (string, error)

	// VerifyToken checks if a token is valid or not
	verifyToken(token string) (*Payload, error)
}
