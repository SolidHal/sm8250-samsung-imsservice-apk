.class public Lcom/sec/internal/ims/cmstore/LineManager;
.super Ljava/lang/Object;
.source "LineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;,
        Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mILineStatusChangeCallBack:Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;

.field private final mLineStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mLineStatusOberserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/LineManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;)V
    .locals 1
    .param p1, "lineChangeCallback"    # Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatusOberserverList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mILineStatusChangeCallBack:Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;

    .line 40
    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/sec/internal/ims/cmstore/LineManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLine :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;->WORKING:Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatusOberserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;

    .line 70
    .local v1, "observer":Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;->onLineAdded(Ljava/lang/String;)V

    .line 71
    .end local v1    # "observer":Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;
    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public initLineStatus()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mILineStatusChangeCallBack:Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;->notifyLoadLineStatus()Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "status":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/LineManager;->addLine(Ljava/lang/String;)V

    .line 63
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_0

    .line 64
    :cond_1
    return-void

    .line 57
    :cond_2
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/cmstore/LineManager;->TAG:Ljava/lang/String;

    const-string v2, "no line added yet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public registerLineStatusOberser(Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatusOberserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "number":Ljava/lang/String;
    invoke-interface {p1, v1}, Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;->onLineAdded(Ljava/lang/String;)V

    .line 50
    .end local v1    # "number":Ljava/lang/String;
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method
