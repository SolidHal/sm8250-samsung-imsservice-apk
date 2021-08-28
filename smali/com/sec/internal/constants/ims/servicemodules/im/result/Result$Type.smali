.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
.super Ljava/lang/Enum;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field public static final enum UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 46
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 47
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 48
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "SIP_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 49
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "MSRP_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 50
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "ENGINE_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 51
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "SESSION_RELEASE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 52
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "NETWORK_ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 53
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "SESSION_RSRC_UNAVAILABLE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 54
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "REMOTE_PARTY_CANCELED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 55
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "DEVICE_UNREGISTERED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 56
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "SIP_PROVISIONAL"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 57
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 58
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const-string v1, "DEDICATED_BEARER_ERROR"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 45
    const/16 v1, 0xd

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v15, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->MSRP_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SESSION_RSRC_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SIP_PROVISIONAL:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    aput-object v2, v1, v13

    aput-object v0, v1, v14

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .locals 1

    .line 45
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-object v0
.end method
