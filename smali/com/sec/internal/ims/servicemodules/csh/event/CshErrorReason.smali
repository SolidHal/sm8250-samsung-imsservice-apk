.class public final enum Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
.super Ljava/lang/Enum;
.source "CshErrorReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum ACK_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum ACK_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum BEARER_LOST:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum FILE_IO:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum FORMAT_NOT_SUPPORTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum NORMAL:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum NOT_REACHABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum REJECTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum REMOTE_CONNECTION_CLOSED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum REQUEST_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum TEMPORAIRLY_NOT_AVAILABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum USER_BUSY:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum USER_NOT_FOUND:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 16
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 17
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "USER_BUSY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_BUSY:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 18
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "TEMPORAIRLY_NOT_AVAILABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->TEMPORAIRLY_NOT_AVAILABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 19
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "REQUEST_TIMED_OUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REQUEST_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 20
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "USER_NOT_FOUND"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_NOT_FOUND:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 21
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "CANCELED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 22
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "REJECTED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REJECTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 23
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "ENGINE_ERROR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 24
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "FILE_IO"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FILE_IO:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 25
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "REMOTE_CONNECTION_CLOSED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REMOTE_CONNECTION_CLOSED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 26
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "FORMAT_NOT_SUPPORTED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORMAT_NOT_SUPPORTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 27
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "ACK_TIMEOUT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ACK_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 28
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "FORBIDDEN"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 29
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "NOT_REACHABLE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NOT_REACHABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 30
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "BEARER_LOST"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->BEARER_LOST:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 31
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "ACK_TIMED_OUT"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ACK_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 32
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "RTP_RTCP_TIMEOUT"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 33
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "MSRP_TIMEOUT"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "CSH_CAM_ERROR"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 35
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "NORMAL"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 36
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "UNKNOWN"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 38
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "NONE"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NONE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 15
    const/16 v1, 0x16

    new-array v1, v1, [Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v16, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v16, v1, v2

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_BUSY:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->TEMPORAIRLY_NOT_AVAILABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REQUEST_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_NOT_FOUND:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REJECTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FILE_IO:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REMOTE_CONNECTION_CLOSED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORMAT_NOT_SUPPORTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ACK_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    aput-object v2, v1, v14

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NOT_REACHABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->BEARER_LOST:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ACK_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0
.end method
