.class public final Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneSettings;
.super Ljava/lang/Object;
.source "SoftphoneNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftphoneSettings"
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final AKA_AUTH_PATH:Ljava/lang/String; = "/softphone/v1/challengeKeys"

.field public static final ATTEMPT:Ljava/lang/String; = "attempt"

.field public static final ATTEMPT_LIMIT:I = 0x6

.field public static final CALL_FORWARDING_PATH:Ljava/lang/String; = "/callHandlingFeatures/v1/communication-diversion"

.field public static final CALL_WAITING_PATH:Ljava/lang/String; = "/callHandlingFeatures/v1/communication-waiting"

.field public static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field public static final E911ADDRESS_PATH:Ljava/lang/String; = "/softphone/v1/locations"

.field public static final E911ADDRESS_VALIDATION_PATH:Ljava/lang/String; = "/emergencyServices/v1/e911Locations"

.field public static final EMERGENCY_PATH:Ljava/lang/String; = "/emergencyServices/v1/"

.field public static final ENCRYPTION_ALGORITHM:Ljava/lang/String; = "AES"

.field public static final FEATURE_PATH:Ljava/lang/String; = "/callHandlingFeatures/v1/"

.field public static final LONG_BACKOFF:J = 0xea60L

.field public static final MSIP_CLIENTID_PREFIX:Ljava/lang/String; = "SCH_SCC_"

.field public static final MSIP_CLIENT_VERSION:Ljava/lang/String; = "1.0"

.field public static final MSIP_ERROR_URL:Ljava/lang/String; = "http://error.com"

.field public static final MSIP_MESSAGE_PATH:Ljava/lang/String; = "/messaging/v0/outbound"

.field public static final MSIP_PROD_DOMAIN_NAME:Ljava/lang/String; = "messagessd.att.net"

.field public static final MSIP_PROD_MESSAGE_HOST:Ljava/lang/String; = "messagessd.att.net"

.field public static final MSIP_PROD_TOKEN_HOST:Ljava/lang/String; = "tprodsmsx.att.net"

.field public static final MSIP_REDICRECT_URL:Ljava/lang/String; = "http://good.com"

.field public static final MSIP_STAGE_DOMAIN_NAME:Ljava/lang/String; = "messagessd.stage.att.net"

.field public static final MSIP_STAGE_MESSAGE_HOST:Ljava/lang/String; = "messagessd.stage.att.net"

.field public static final MSIP_STAGE_TOKEN_HOST:Ljava/lang/String; = "tstagesms.stage.att.net"

.field public static final MSIP_TOKEN_PATH:Ljava/lang/String; = "/commonLogin/nxsEDAM/controller.do"

.field public static final OBTAIN_IDENTIFIERS_PATH:Ljava/lang/String; = "/softphone/v1/identities?SoftphoneType:sip"

.field public static final PATH:Ljava/lang/String; = "/softphone/v1/"

.field public static final PROD_APP_KEY_A4S:Ljava/lang/String; = "dyp77kwaauqxx6aalgpjjq3ctoq1dzwk"

.field public static final PROD_APP_KEY_A8:Ljava/lang/String; = "oxqybwzqkuke37qbfxhemdphjn8fc4wr"

.field public static final PROD_APP_KEY_CHAGALL:Ljava/lang/String; = "b3wq9r826cwqsr2pptuha65rsovyvogb"

.field public static final PROD_APP_KEY_DAVINCI:Ljava/lang/String; = "x1o8hkhkc9a4s0j3wctd9vpvy4fsbopr"

.field public static final PROD_APP_KEY_KLIMT:Ljava/lang/String; = "gbyqrqhf78wrpaf82qer2lnpivumunoc"

.field public static final PROD_APP_KEY_RENOIR:Ljava/lang/String; = "up3fpnsojlca8uggywdwgkyaqgmnsb3h"

.field public static final PROD_APP_KEY_S2:Ljava/lang/String; = "ejmp2k1chenktmtoe0cg97rkwg8vlogm"

.field public static final PROD_APP_KEY_S4:Ljava/lang/String; = "mjoy9og9bd8bixjhxr1nannwgbalxudu"

.field public static final PROD_APP_KEY_VIEW2:Ljava/lang/String; = "nuri2epiz6mhrlidwqomhgxcywlqunzr"

.field public static final PROD_APP_SECRET_A4S:Ljava/lang/String; = "tuqlgat1pdra8x1mjxdnawt7psgxzsgo"

.field public static final PROD_APP_SECRET_A8:Ljava/lang/String; = "hekgi2kbc21bvjpnkorin95iiog6c9ol"

.field public static final PROD_APP_SECRET_CHAGALL:Ljava/lang/String; = "iu0rqlat1tzdpb2b39txmopketfooofo"

.field public static final PROD_APP_SECRET_DAVINCI:Ljava/lang/String; = "rao5cogniww5it7mufx57xfbfrhsutmn"

.field public static final PROD_APP_SECRET_KLIMT:Ljava/lang/String; = "ifnskvditiaasgwgfpaukrvx3eaqvh1r"

.field public static final PROD_APP_SECRET_RENOIR:Ljava/lang/String; = "05wib7o909lwzlgjkvwad6kyr9photnb"

.field public static final PROD_APP_SECRET_S2:Ljava/lang/String; = "t9yzb6hlaxkersol9us5lamrf1iiru6a"

.field public static final PROD_APP_SECRET_S4:Ljava/lang/String; = "szyqu8oecuoikomhaooihdgbxrcjzfku"

.field public static final PROD_APP_SECRET_VIEW2:Ljava/lang/String; = "i6w0p4bjaf56pwuytlvwehrpajpgh4v8"

.field public static final PROD_HOST:Ljava/lang/String; = "api.att.com"

.field public static final PROVISION_ACCOUNT_PATH:Ljava/lang/String; = "/softphone/v1/account"

.field public static final REFRESH_TIMER_PERCENTAGE:I = 0x384

.field public static final REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field public static final RELEASE_IDENTIFIERS_PATH:Ljava/lang/String; = "/softphone/v1/identities"

.field public static final RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field public static final RETRY_LIMIT:I = 0x3

.field public static final REVOKE_TOKEN_PATH:Ljava/lang/String; = "/oauth/v4/revoke"

.field public static final SCHEME:Ljava/lang/String; = "https://"

.field public static final SCOPE:Ljava/lang/String; = "SOFTPHONE CALLHANDLINGFEATURES EMERGENCYSERVICES"

.field public static final SHORT_ATTEMPT_LIMIT:I = 0x3

.field public static final STAGE_APP_KEY:Ljava/lang/String; = "inestcjvum7fuv9ssvy9phlq1kwgzsjg"

.field public static final STAGE_APP_SECRET:Ljava/lang/String; = "mkitwyspqpeszb34moy6ai7brzjvz7tm"

.field public static final STAGE_HOST:Ljava/lang/String; = "api-stage-numbersync.bf.sl.attcompute.com"

.field public static final TERMS_AND_CONDITIONS_PATH:Ljava/lang/String; = "/softphone/v1/termsAndConditions?tcType=Url"

.field public static final TGUARD_MSIP_OPERATION:Ljava/lang/String; = "SessionGen"

.field public static final TOKEN_PATH:Ljava/lang/String; = "/oauth/v4/token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
