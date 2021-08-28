.class Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.super Ljava/lang/Object;
.source "SimDataAdaptor.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mLastOperator:Ljava/lang/String;

.field protected mPreferredImpuIndex:I

.field protected mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

.field protected mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 1
    .param p1, "simManager"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    .line 21
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    .line 27
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimpleEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
    .locals 2
    .param p0, "sm"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 32
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 34
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 35
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorTmoUs;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorTmoUs;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v1

    .line 36
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 37
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorAtt;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorAtt;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v1

    .line 38
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->SAMSUNG:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 39
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorTestBed;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorTestBed;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v1

    .line 40
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 41
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v1

    .line 42
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 43
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorGcf;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorGcf;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v1

    .line 44
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    .line 45
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v1

    .line 46
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    .line 47
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorCmcc;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorCmcc;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v1

    .line 48
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_7

    .line 49
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v1

    .line 50
    :cond_7
    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_8

    .line 51
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorUsc;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorUsc;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v1

    .line 53
    :cond_8
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v1
.end method


# virtual methods
.method public getEmergencyImpu(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 58
    .local p1, "impus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getEmergencyImpu:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 69
    :cond_1
    return-object v0

    .line 60
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getImpuFromList(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 73
    .local p1, "impus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getImpuFromList:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 82
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getValidImpu(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getValidImpu(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 86
    .local p1, "impus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "impu":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    return-object v1

    .line 90
    .end local v1    # "impu":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasValidMsisdn()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public needHandleLoadedAgain(Ljava/lang/String;)Z
    .locals 3
    .param p1, "operator"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different operator. Last:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
