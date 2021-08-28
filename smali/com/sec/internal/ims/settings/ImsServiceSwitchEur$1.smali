.class Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceSwitchEur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    .line 93
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 96
    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->isDefaultMessageAppInUse()Z

    move-result v0

    .line 100
    .local v0, "isSmsDefault":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsServiceSwitchEur["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget v2, v2, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange: RCS DefaultSmsObserver. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget v1, v1, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget-object v2, v2, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mContext:Landroid/content/Context;

    const-string v3, "imsswitch"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 105
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "defaultsms"

    if-eqz v0, :cond_0

    .line 106
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSms:Z

    .line 107
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget-boolean v4, v4, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSms:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 109
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iput-boolean v4, v5, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSms:Z

    .line 110
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget-boolean v4, v4, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mDefaultSms:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    .end local v0    # "isSmsDefault":Z
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method
