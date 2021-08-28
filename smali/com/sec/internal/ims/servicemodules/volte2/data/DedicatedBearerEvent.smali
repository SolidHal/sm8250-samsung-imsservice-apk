.class public Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;
.super Ljava/lang/Object;
.source "DedicatedBearerEvent.java"


# instance fields
.field private final mBearerSessionId:I

.field private final mBearerState:I

.field private final mQci:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "bearState"    # I
    .param p2, "qci"    # I
    .param p3, "bearerSessionId"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mBearerState:I

    .line 21
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mQci:I

    .line 22
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mBearerSessionId:I

    .line 23
    return-void
.end method


# virtual methods
.method public getBearerSessionId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mBearerSessionId:I

    return v0
.end method

.method public getBearerState()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mBearerState:I

    return v0
.end method

.method public getQci()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->mQci:I

    return v0
.end method
