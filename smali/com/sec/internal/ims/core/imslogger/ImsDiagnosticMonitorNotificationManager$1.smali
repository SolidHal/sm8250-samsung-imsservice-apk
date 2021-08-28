.class Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;
.super Ljava/lang/Object;
.source "ImsDiagnosticMonitorNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->onIndication(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

.field final synthetic val$direction:I

.field final synthetic val$hexContents:Ljava/lang/String;

.field final synthetic val$localIp:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$msgType:I

.field final synthetic val$notifyType:I

.field final synthetic val$phoneId:I

.field final synthetic val$remoteIp:Ljava/lang/String;

.field final synthetic val$timestamp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 147
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    iput p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$notifyType:I

    iput p3, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$msgType:I

    iput p4, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$direction:I

    iput p5, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$phoneId:I

    iput-object p6, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$timestamp:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$localIp:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$remoteIp:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$message:Ljava/lang/String;

    iput-object p10, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$hexContents:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    iget v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$notifyType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "b":Landroid/os/Bundle;
    iget v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$notifyType:I

    const-string v2, "notifyType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iget v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$msgType:I

    const-string v2, "msgType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    iget v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$direction:I

    const-string v2, "direction"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    iget v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$phoneId:I

    const-string/jumbo v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$timestamp:Ljava/lang/String;

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$localIp:Ljava/lang/String;

    const-string v2, "localIp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$remoteIp:Ljava/lang/String;

    const-string/jumbo v2, "remoteIp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$message:Ljava/lang/String;

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$hexContents:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->val$hexContents:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 165
    .local v1, "bytesArray":[B
    const-string v2, "hexcontents"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 167
    .end local v1    # "bytesArray":[B
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(Ljava/lang/Object;)Z

    .line 169
    .end local v0    # "b":Landroid/os/Bundle;
    nop

    .line 174
    :goto_0
    return-void
.end method
