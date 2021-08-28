.class Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoShareModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 159
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v1

    .line 166
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    const-string v2, "Session #"

    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " duration is approaching/longer than the VS MAX DURATION :"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 170
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$300(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)[I

    move-result-object v2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mActiveCallPhoneId:I

    aget v2, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->maxDurationTime()V

    goto :goto_0

    .line 173
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not found"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0    # "sessionId":I
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    :cond_1
    :goto_0
    return-void
.end method
