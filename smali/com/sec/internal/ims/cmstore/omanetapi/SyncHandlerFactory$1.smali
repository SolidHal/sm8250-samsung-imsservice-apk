.class Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$1;
.super Ljava/lang/Object;
.source "SyncHandlerFactory.java"

# interfaces
.implements Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->registerLineListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLineAdded(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLineAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
