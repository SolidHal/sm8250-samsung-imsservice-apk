.class Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;
.super Ljava/lang/Object;
.source "EucFactory.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/euc/EucFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EUCQuery"
.end annotation


# instance fields
.field private final mDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;"
        }
    .end annotation
.end field

.field private mEUCData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 1
    .param p1, "eucData"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mEUCData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    .line 280
    return-void
.end method


# virtual methods
.method public addDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;)V
    .locals 2
    .param p1, "dialog"    # Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    .locals 3
    .param p1, "lang"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    .line 296
    .local v0, "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    if-nez v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    const-string v2, "def"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    .line 300
    :cond_0
    return-object v0
.end method

.method public getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mEUCData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    return-object v0
.end method

.method public hasDialog(Ljava/lang/String;)Z
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
