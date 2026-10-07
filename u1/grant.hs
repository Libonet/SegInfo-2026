import Data.Set as DS

data File = File { fname :: String, content :: String, scf :: AccessClass }
  deriving (Eq, Ord, Show)
data User = User { 
  uname :: String,
  scu :: AccessClass,
  readingFiles :: DS.Set File,
  writingFiles :: DS.Set File
}
  deriving (Eq, Ord, Show)
type SL = Int
type CAT = String
type AccessClass = (SL, Set CAT)
data Access = Read | Write
  deriving (Eq, Ord, Show)

low = 1
medium = 2
high = 3

dominates :: AccessClass -> AccessClass -> Bool
dominates (asl, acat) (bsl, bcat) = asl >= bsl && bcat `DS.isSubsetOf` acat

grant :: User -> File -> Access -> Bool
grant user file access = scf file <= scu user && checkFiles user file access

checkFiles user file Read =
  all (not . dominates (scf file)) $ DS.map scf $ writingFiles user
checkFiles user file Write = 
  all ((scf file) `dominates`) $ DS.map scf $ readingFiles user

andres :: User
andres = User {
  uname = "andres",
  scu = (high, DS.fromList ["Cuba", "Francia", "Nuclear"]),
  readingFiles = DS.empty,
  writingFiles = DS.empty
}

reactorNuclearFrancia :: File
reactorNuclearFrancia = File {
  fname = "rnf",
  content = "Info sobre reactor nuclear en Francia...",
  scf = (high, DS.fromList ["Francia", "Nuclear"])
}

filtradoInfo :: File
filtradoInfo = File {
  fname = "filtrado",
  content = "Filtrando info sobre reactor nuclear en Francia...",
  scf = (low, DS.fromList ["Francia", "Nuclear"])
}

