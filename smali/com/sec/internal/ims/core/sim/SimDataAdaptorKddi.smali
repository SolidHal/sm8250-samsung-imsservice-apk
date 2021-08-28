.class Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.source "SimDataAdaptor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    const-class v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 1
    .param p1, "simManager"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 113
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;->mPreferredImpuIndex:I

    .line 115
    return-void
.end method


# virtual methods
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

    .line 119
    .local p1, "impus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getImpuFromList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;->mPreferredImpuIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;->mPreferredImpuIndex:I

    .line 125
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;->mPreferredImpuIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;->getValidImpu(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
