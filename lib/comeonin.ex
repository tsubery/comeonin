defmodule Comeonin do
  @moduledoc """
  Comeonin is a password hashing library that aims to make the
  secure validation of passwords as straightforward as possible.

  It also provides extensive documentation to help
  developers keep their apps secure.

  Comeonin supports argon2, bcrypt and pbkdf2 (sha512 and sha256).
  These are all supported as optional dependencies.

  ## Installation

  First, you need to decide which algorithm to use (see the
  `Choosing an algorithm` section for more information about
  each algorithm):

    * argon2 - [argon2_elixir](https://github.com/riverrun/argon2_elixir)
    * bcrypt - [bcrypt_elixir](https://github.com/riverrun/bcrypt_elixir)
    * pbkdf2 - [pbkdf2_elixir](https://github.com/riverrun/pbkdf2_elixir)

  Then add `comeonin` and the library you choose to the `deps` section
  of your `mix.exs` file, as in the following example.

      defp deps do
        [
          {:comeonin, "~> 4.0"},
          {:argon2_elixir, "~> 1.2"},
        ]
      end

  ## Use

  Each module offers the following six functions (the first two are new
  to version 4):

    * add_hash - hash a password and return it in a map with the password set to nil
    * check_pass - check a password by comparing it with the stored hash, which is in a map
    * hashpwsalt - hash a password, using a randomly generated salt
    * checkpw - check a password by comparing it with the stored hash
    * dummy_checkpw - perform a dummy check to make user enumeration more difficult
    * report - print out a report of the hashing algorithm, to help with configuration

  For a lower-level API, you could also use the hashing dependency directly,
  without installing Comeonin.

  ## Choosing an algorithm

  The algorithms Argon2, Bcrypt and Pbkdf2 are all very strong password hashing
  functions.

  Argon2 is a lot newer, and this can be considered to be both an advantage
  and a disadvantage. On the one hand, Argon2 benefits from more recent
  research. On the other hand, Argon2 has not received the same amount
  of scrutiny that Bcrypt / Pbkdf2 has.

  ### Argon2

  Argon2 is the winner of the [Password Hashing Competition (PHC)](https://password-hashing.net).

  Argon2 is a memory-hard password hashing function which can be used to hash
  passwords for credential storage, key derivation, or other applications.

  Being memory-hard means that it is not only computationally expensive,
  but it also uses a lot of memory (which can be configured). This means
  that it is much more difficult to attack Argon2 hashes using GPUs or
  dedicated hardware.

  More information is available at the [Argon2 reference C implementation
  repository](https://github.com/P-H-C/phc-winner-argon2)

  ### Bcrypt

  Bcrypt is a key derivation function for passwords designed by Niels Provos
  and David Mazières. Bcrypt is an adaptive function, which means that it can
  be configured to remain slow and resistant to brute-force attacks even as
  computational power increases.

  ### Pbkdf2

  Pbkdf2 is a password-based key derivation function
  that uses a password, a variable-length salt and an iteration
  count and applies a pseudorandom function to these to
  produce a key.

  The original implementation used SHA-1 as the pseudorandom function,
  but this version uses HMAC-SHA-512, the default, or HMAC-SHA-256.

  ## Further information

  Visit our [wiki](https://github.com/riverrun/comeonin/wiki)
  for links to further information about these and related issues.
  """

end
