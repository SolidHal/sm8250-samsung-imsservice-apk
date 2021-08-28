.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
.super Ljava/lang/Enum;
.source "CancelReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CONNECTION_LOST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum CONTENT_REACHED_DOWNSIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum FORBIDDEN_FT_HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum INVALID_FT_FILE_SIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum INVALID_URL_TEMPLATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum LOCALLY_ABORTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum LOW_MEMORY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum MSRP_SESSION_ERROR_NO_RESUME:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum REJECTED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum REJECTED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum REMOTE_BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum TIME_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum VALIDITY_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field public static final enum WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 19
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "CANCELED_BY_USER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 29
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "CANCELED_BY_REMOTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 34
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "CANCELED_BY_SYSTEM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 39
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "REJECTED_BY_USER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REJECTED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 44
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "REJECTED_BY_REMOTE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REJECTED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 49
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "TIME_OUT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->TIME_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 54
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "LOW_MEMORY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->LOW_MEMORY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 59
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "TOO_LARGE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 64
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "NOT_AUTHORIZED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 69
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "REMOTE_BLOCKED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 74
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "VALIDITY_EXPIRED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->VALIDITY_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 79
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "REMOTE_TEMPORARILY_UNAVAILABLE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 84
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "ERROR"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 89
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "INVALID_REQUEST"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 94
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "REMOTE_USER_INVALID"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 99
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "FORBIDDEN_NO_RETRY_FALLBACK"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 104
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "CONTENT_REACHED_DOWNSIZE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONTENT_REACHED_DOWNSIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 109
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "NO_RESPONSE"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 115
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "LOCALLY_ABORTED"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->LOCALLY_ABORTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 120
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "CONNECTION_RELEASED"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 125
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "DEVICE_UNREGISTERED"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 130
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "DEDICATED_BEARER_UNAVAILABLE_TIMEOUT"

    const/16 v15, 0x16

    const/16 v14, 0x16

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 136
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "MSRP_SESSION_ERROR_NO_RESUME"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->MSRP_SESSION_ERROR_NO_RESUME:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 141
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "WIFI_DISCONNECTED"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 146
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "CONNECTION_LOST"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONNECTION_LOST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 151
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "FORBIDDEN_FT_HTTP"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_FT_HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 156
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "INVALID_FT_FILE_SIZE"

    const/16 v14, 0x1b

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_FT_FILE_SIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 161
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const-string v1, "INVALID_URL_TEMPLATE"

    const/16 v14, 0x1c

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_URL_TEMPLATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 14
    const/16 v1, 0x1d

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v14, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REJECTED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REJECTED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->TIME_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->LOW_MEMORY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_BLOCKED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->VALIDITY_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONTENT_REACHED_DOWNSIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->LOCALLY_ABORTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->MSRP_SESSION_ERROR_NO_RESUME:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONNECTION_LOST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_FT_HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_FT_FILE_SIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 166
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->mId:I

    .line 167
    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 6
    .param p0, "id"    # I

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "cancelReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 178
    .local v4, "r":Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    iget v5, v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->mId:I

    if-ne v5, p0, :cond_0

    .line 179
    move-object v0, v4

    .line 180
    goto :goto_1

    .line 177
    .end local v4    # "r":Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->mId:I

    return v0
.end method
