.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
.super Ljava/lang/Enum;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatbotTrafficType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum ADVERTISEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum PAYMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum PREMIUM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum SUBSCRIPTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;


# instance fields
.field private trafficType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 287
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 288
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const-string v1, "ADVERTISEMENT"

    const/4 v3, 0x1

    const-string v4, "advertisement"

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ADVERTISEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 289
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const-string v1, "PAYMENT"

    const/4 v4, 0x2

    const-string/jumbo v5, "payment"

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PAYMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 290
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const-string v1, "PREMIUM"

    const/4 v5, 0x3

    const-string/jumbo v6, "premium"

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PREMIUM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 291
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const-string v1, "SUBSCRIPTION"

    const/4 v6, 0x4

    const-string/jumbo v7, "subscription"

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->SUBSCRIPTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 292
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    const-string v1, "UNKNOWN"

    const/4 v7, 0x5

    const-string/jumbo v8, "unknown"

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 286
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ADVERTISEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PAYMENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->PREMIUM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->SUBSCRIPTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 297
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->trafficType:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 301
    if-nez p0, :cond_0

    .line 302
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    return-object v0

    .line 305
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 306
    .local v3, "type":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
    iget-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->trafficType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    return-object v3

    .line 305
    .end local v3    # "type":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 286
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;
    .locals 1

    .line 286
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    return-object v0
.end method
