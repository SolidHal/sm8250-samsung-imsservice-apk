.class final Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;
.super Ljava/lang/Object;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/ImsSmsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LastSentDeliveryAck"
.end annotation


# instance fields
.field public mNetworkType:I

.field public mPdu:[B

.field public mRetryCount:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "errorCause"    # I
    .param p3, "networkType"    # I

    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1370
    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mPdu:[B

    .line 1371
    iput p3, p0, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mNetworkType:I

    .line 1372
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mRetryCount:I

    .line 1373
    return-void
.end method
