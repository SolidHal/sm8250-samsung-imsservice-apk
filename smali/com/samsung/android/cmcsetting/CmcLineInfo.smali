.class public Lcom/samsung/android/cmcsetting/CmcLineInfo;
.super Ljava/lang/Object;
.source "CmcLineInfo.java"


# instance fields
.field private mImpu:Ljava/lang/String;

.field private mLineId:Ljava/lang/String;

.field private mLineName:Ljava/lang/String;

.field private mLineSlotIndex:I

.field private mMsisdn:Ljava/lang/String;

.field private mNmsAddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPcscfAddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineId:Ljava/lang/String;

    .line 16
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineSlotIndex:I

    .line 17
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mMsisdn:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mImpu:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mNmsAddrList:Ljava/util/ArrayList;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mPcscfAddrList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getImpu()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mImpu:Ljava/lang/String;

    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSlotIndex()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineSlotIndex:I

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getNmsAddrList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mNmsAddrList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPcscfAddrList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mPcscfAddrList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setImpu(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mImpu:Ljava/lang/String;

    return-void
.end method

.method public setLineId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineId:Ljava/lang/String;

    return-void
.end method

.method public setLineName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineName:Ljava/lang/String;

    return-void
.end method

.method public setLineSlotIndex(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineSlotIndex:I

    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mMsisdn:Ljava/lang/String;

    return-void
.end method

.method public setNmsAddrList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mNmsAddrList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPcscfAddrList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mPcscfAddrList:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lineId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",lineSlotIndex:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineSlotIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",lineName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mLineName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",impu:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mImpu:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",nmsAddr:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mNmsAddrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",pcscfAddrList:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcLineInfo;->mPcscfAddrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
