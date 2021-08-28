.class public Lcom/sec/internal/ims/gba/BootstrappedSa;
.super Ljava/lang/Object;
.source "BootstrappedSa.java"


# instance fields
.field private mBtid:Ljava/lang/String;

.field private mGbaKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "gbaKey"    # Ljava/lang/String;
    .param p2, "btid"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sec/internal/ims/gba/BootstrappedSa;->mGbaKey:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/sec/internal/ims/gba/BootstrappedSa;->mBtid:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getBtid()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/gba/BootstrappedSa;->mBtid:Ljava/lang/String;

    return-object v0
.end method

.method public getGbaKey()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/gba/BootstrappedSa;->mGbaKey:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/gba/BootstrappedSa;->getBtid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gbaKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/gba/BootstrappedSa;->getGbaKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
