.class final Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;
.super Landroid/os/Handler;
.source "EntitlementConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 98
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 104
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$600(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V

    .line 117
    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$500(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V

    .line 114
    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$400(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V

    .line 111
    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$800(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Bundle;)V

    .line 123
    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$700(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V

    .line 120
    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$300(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Bundle;)V

    .line 108
    nop

    .line 127
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
