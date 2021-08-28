.class Lcom/sec/internal/ims/core/iil/IilManager$1;
.super Landroid/database/ContentObserver;
.source "IilManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/iil/IilManager;-><init>(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/IImsFramework;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IilManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/iil/IilManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/iil/IilManager;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 143
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$1;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager$1;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v0, v0, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsSettings updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager$1;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->removeMessages(I)V

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IilManager$1;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method
