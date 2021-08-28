.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;
.super Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub;
.source "UtServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 1514
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    .locals 5
    .param p1, "noti"    # Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive notify for Request ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    iget v0, p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mRequestId:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown request ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mRequestId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1523
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    const/4 v3, 0x5

    iget v4, p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mRequestId:I

    invoke-virtual {v0, v3, v4, v2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->sendMessage(Landroid/os/Message;)Z

    .line 1524
    nop

    .line 1530
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$600(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1531
    const-string v0, "Process next request..."

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->dequeueRequest()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$700(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    goto :goto_1

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$802(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Z)Z

    .line 1536
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
