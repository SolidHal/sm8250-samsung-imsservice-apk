.class Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;
.super Landroid/content/BroadcastReceiver;
.source "IshTranslation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CONTENT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->access$100(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :cond_0
    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_ACCEPT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->access$200(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    :cond_1
    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->access$300(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V

    .line 59
    :cond_2
    :goto_0
    return-void
.end method
