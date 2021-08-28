.class Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;
.super Landroid/os/Handler;
.source "FileUploadMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImConfig;Landroid/os/Looper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 212
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 216
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$200(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    return-void

    .line 222
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$302(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Z)Z

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$500(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$508(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)I

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$400(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$600(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;II)V

    .line 234
    goto :goto_0

    .line 253
    :pswitch_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->removeMessages(I)V

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$600(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;II)V

    .line 255
    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 249
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$1100(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$900(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$1000(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V

    goto :goto_0

    .line 239
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$800(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;J)V

    .line 240
    goto :goto_0

    .line 236
    :pswitch_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$700(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V

    .line 237
    goto :goto_0

    .line 224
    :pswitch_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->access$400(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V

    .line 225
    nop

    .line 259
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
