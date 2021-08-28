.class Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceSwitchEur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyEventBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;
    .param p2, "x1"    # Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$1;

    .line 211
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;-><init>(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsServiceSwitchEur["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget v1, v1, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EmEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    invoke-static {v0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->access$000(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V

    .line 217
    return-void
.end method
