.class Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
.super Ljava/lang/Object;
.source "OptionsRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptionsRequest"
.end annotation


# static fields
.field static final DONE:I = 0x2

.field static final FAILED:I = 0x3

.field static final INIT:I = 0x0

.field static final REQUESTED:I = 0x1


# instance fields
.field private isIncoming:Z

.field private lastSeen:I

.field private mExtFeature:Ljava/lang/String;

.field private final mMyFeatures:J

.field private mPhoneId:I

.field private mState:I

.field private mTimestamp:Ljava/util/Date;

.field private final mUri:Lcom/sec/ims/util/ImsUri;

.field private txId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "myFeatures"    # J
    .param p4, "phoneId"    # I
    .param p5, "extFeature"    # Ljava/lang/String;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    .line 380
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    .line 385
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 386
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    .line 387
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    .line 388
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    .line 389
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    .line 390
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    .line 391
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    .line 392
    return-void
.end method


# virtual methods
.method getExtFeature()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    return-object v0
.end method

.method getLastSeen()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    return v0
.end method

.method getMyFeatures()J
    .locals 2

    .line 411
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    return-wide v0
.end method

.method getPhoneId()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    return v0
.end method

.method getState()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    return v0
.end method

.method getTimestamp()Ljava/util/Date;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method getTxId()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    return-object v0
.end method

.method getUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method isIncoming()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    return v0
.end method

.method setExtFeature(Ljava/lang/String;)V
    .locals 0
    .param p1, "extFeature"    # Ljava/lang/String;

    .line 447
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    .line 448
    return-void
.end method

.method setIncoming(Z)V
    .locals 0
    .param p1, "incoming"    # Z

    .line 427
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    .line 428
    return-void
.end method

.method setLastSeen(I)V
    .locals 0
    .param p1, "lastSeen"    # I

    .line 443
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    .line 444
    return-void
.end method

.method setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 395
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    .line 396
    return-void
.end method

.method setTxId(Ljava/lang/String;)V
    .locals 0
    .param p1, "txId"    # Ljava/lang/String;

    .line 435
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    .line 436
    return-void
.end method
