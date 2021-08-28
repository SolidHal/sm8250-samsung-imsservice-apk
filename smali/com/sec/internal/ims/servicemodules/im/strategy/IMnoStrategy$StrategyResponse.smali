.class public Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.super Ljava/lang/Object;
.source "IMnoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrategyResponse"
.end annotation


# instance fields
.field private final mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

.field private final mStatusCode:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V
    .locals 1
    .param p1, "statusCode"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mStatusCode:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 461
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    .line 462
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;)V
    .locals 0
    .param p1, "statusCode"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .param p2, "errorNotificationId"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mStatusCode:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 456
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    .line 457
    return-void
.end method


# virtual methods
.method public getErrorNotificationId()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    return-object v0
.end method

.method public getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->mStatusCode:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0
.end method
