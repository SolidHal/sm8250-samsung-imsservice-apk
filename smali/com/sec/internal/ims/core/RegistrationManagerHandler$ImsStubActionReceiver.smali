.class Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationManagerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationManagerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsStubActionReceiver"
.end annotation


# static fields
.field protected static final ACTION_MOCK_NETWORK_EVENT:Ljava/lang/String; = "com.sec.ims.MOCK_IMS_EVENT"

.field protected static final EXTRA_EVENT:Ljava/lang/String; = "event"

.field protected static final EXTRA_NETWORK:Ljava/lang/String; = "network"

.field protected static final EXTRA_OOS:Ljava/lang/String; = "oos"

.field protected static final EXTRA_PHONEID:Ljava/lang/String; = "phoneid"

.field protected static final EXTRA_VOPS:Ljava/lang/String; = "vops"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 190
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: Intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v0, "event"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "event":Ljava/lang/String;
    const-string v2, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 205
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "network":Ljava/lang/String;
    const-string/jumbo v3, "vops"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "vops":Ljava/lang/String;
    const-string/jumbo v5, "oos"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "oos":Ljava/lang/String;
    const-string/jumbo v7, "phoneid"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 210
    .local v7, "phoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ImsStub: network event - network="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " VoPS="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " OutOfSvc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {v8, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->access$000(Lcom/sec/internal/ims/core/RegistrationManagerHandler;I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v8

    if-nez v8, :cond_0

    .line 213
    const-string v3, "onReceive, mNetworkEvent is not exist. Return.."

    invoke-static {v1, v7, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    return-void

    .line 217
    :cond_0
    new-instance v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {v8, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->access$000(Lcom/sec/internal/ims/core/RegistrationManagerHandler;I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 218
    .local v1, "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    const-string v8, "nr"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 219
    const/16 v8, 0x14

    iput v8, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_0

    .line 220
    :cond_1
    const-string v8, "lte"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 221
    const/16 v8, 0xd

    iput v8, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_0

    .line 222
    :cond_2
    const-string v8, "hspa"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 223
    const/16 v8, 0xa

    iput v8, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_0

    .line 224
    :cond_3
    const-string v8, "ehrpd"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 225
    const/16 v8, 0xe

    iput v8, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_0

    .line 226
    :cond_4
    const-string v8, "cdma"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 227
    const/4 v8, 0x7

    iput v8, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_0

    .line 228
    :cond_5
    const-string v8, "iwlan"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 229
    const/16 v8, 0x12

    iput v8, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 232
    :cond_6
    :goto_0
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 233
    invoke-static {v4}, Lcom/sec/internal/constants/ims/os/VoPsIndication;->translateVops(Ljava/lang/String;)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 236
    :cond_7
    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 237
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 239
    :cond_8
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v5, 0x2bd

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v7, v8, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    .end local v1    # "ne":Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .end local v2    # "network":Ljava/lang/String;
    .end local v4    # "vops":Ljava/lang/String;
    .end local v6    # "oos":Ljava/lang/String;
    .end local v7    # "phoneId":I
    :cond_9
    return-void
.end method
