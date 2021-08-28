.class public Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;
.super Ljava/lang/Object;
.source "IMnoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpStrategyResponse"
.end annotation


# instance fields
.field private final mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field private final mDelay:I


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;I)V
    .locals 0
    .param p1, "cancelReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "delay"    # I

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 479
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->mDelay:I

    .line 480
    return-void
.end method


# virtual methods
.method public getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object v0
.end method

.method public getDelay()I
    .locals 1

    .line 487
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->mDelay:I

    return v0
.end method
