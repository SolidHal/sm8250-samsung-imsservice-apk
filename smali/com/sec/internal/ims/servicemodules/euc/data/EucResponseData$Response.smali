.class public final enum Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
.super Ljava/lang/Enum;
.source "EucResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

.field public static final enum ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

.field public static final enum DECLINE:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    const-string v1, "ACCEPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    .line 32
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    const-string v1, "DECLINE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->DECLINE:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    .line 24
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    return-object v0
.end method
