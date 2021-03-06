module CloudServices.KeyValueStore where
--
import Data.Text (Text)

type KeyValueContainer              = Text
type KeyValuePutResponseStatus      = Int
type KeyValueChangeResponseStatus   = Int
type KeyValueDeleteResponseStatus   = Int

class KeyValueStore m where
    getValue     :: KeyValueContainer -> k -> m v
    putValue     :: KeyValueContainer -> k -> v -> m KeyValuePutResponseStatus
    changeValue  :: KeyValueContainer -> k -> v -> m KeyValueChangeResponseStatus
    deleteValue  :: KeyValueContainer -> k -> m KeyValueDeleteResponseStatus
