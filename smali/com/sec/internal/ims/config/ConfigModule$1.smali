.class Lcom/sec/internal/ims/config/ConfigModule$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConfigModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/ConfigModule;->createNetworkListener(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigModule;

.field final synthetic val$networkType:I

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/ConfigModule;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/ConfigModule;

    .line 1454
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iput p2, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$phoneId:I

    iput p3, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 1457
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigModule;->access$300()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$phoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1458
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    const/16 v1, 0x18

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1460
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iget v3, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {v2, v1, v0, v3, p1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 1459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 1463
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iget v2, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$phoneId:I

    iget v3, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 1465
    :goto_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 1469
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigModule;->access$300()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$phoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLost : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1470
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    const/16 v1, 0x19

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1471
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1472
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iget v3, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {v2, v1, v0, v3}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 1471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iget v2, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$phoneId:I

    iget v3, p0, Lcom/sec/internal/ims/config/ConfigModule$1;->val$networkType:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 1477
    :goto_1
    return-void
.end method
