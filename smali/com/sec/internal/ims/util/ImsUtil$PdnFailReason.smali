.class public final enum Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
.super Ljava/lang/Enum;
.source "ImsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/ImsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PdnFailReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum NOT_DEFINED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum NO_IMS_APN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum PDN_MAX_TIMEOUT:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum PDN_THROTTLED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum PROTOCOL_ERRORS:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;


# instance fields
.field private final mFailCause:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 281
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "PDN_MAX_TIMEOUT"

    const/4 v2, 0x0

    const/16 v3, -0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->PDN_MAX_TIMEOUT:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 282
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "PDN_THROTTLED"

    const/4 v3, 0x1

    const/4 v4, -0x8

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->PDN_THROTTLED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 283
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "INSUFFICIENT_RESOURCES"

    const/4 v4, 0x2

    const/16 v5, 0x1a

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->INSUFFICIENT_RESOURCES:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 284
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "MISSING_UNKNOWN_APN"

    const/4 v5, 0x3

    const/16 v6, 0x1b

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->MISSING_UNKNOWN_APN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 285
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "ACTIVATION_REJECT_GGSN"

    const/4 v6, 0x4

    const/16 v7, 0x1e

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->ACTIVATION_REJECT_GGSN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 286
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "SERVICE_OPTION_NOT_SUPPORTED"

    const/4 v7, 0x5

    const/16 v8, 0x20

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 287
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/4 v8, 0x6

    const/16 v9, 0x21

    invoke-direct {v0, v1, v8, v9}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 288
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    const/4 v9, 0x7

    const/16 v10, 0x37

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 289
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "PROTOCOL_ERRORS"

    const/16 v10, 0x8

    const/16 v11, 0x6f

    invoke-direct {v0, v1, v10, v11}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->PROTOCOL_ERRORS:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 290
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "NO_IMS_APN"

    const/16 v11, 0x9

    const/4 v12, -0x1

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->NO_IMS_APN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 291
    new-instance v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    const-string v1, "NOT_DEFINED"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v12}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->NOT_DEFINED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 280
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    sget-object v12, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->PDN_MAX_TIMEOUT:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    aput-object v12, v1, v2

    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->PDN_THROTTLED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->INSUFFICIENT_RESOURCES:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->MISSING_UNKNOWN_APN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->ACTIVATION_REJECT_GGSN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->PROTOCOL_ERRORS:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->NO_IMS_APN:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    aput-object v2, v1, v11

    aput-object v0, v1, v13

    sput-object v1, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->$VALUES:[Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "failCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 296
    iput p3, p0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->mFailCause:I

    .line 297
    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
    .locals 6
    .param p0, "failCause"    # I

    .line 300
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->NOT_DEFINED:Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    .line 301
    .local v0, "result":Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->values()[Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 302
    .local v4, "pdnFail":Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
    iget v5, v4, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->mFailCause:I

    if-ne v5, p0, :cond_0

    .line 303
    move-object v0, v4

    .line 304
    goto :goto_1

    .line 301
    .end local v4    # "pdnFail":Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 280
    const-class v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
    .locals 1

    .line 280
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->$VALUES:[Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    return-object v0
.end method


# virtual methods
.method public getCause()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->mFailCause:I

    return v0
.end method
