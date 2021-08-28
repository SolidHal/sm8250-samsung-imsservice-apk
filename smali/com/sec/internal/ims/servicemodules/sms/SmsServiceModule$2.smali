.class Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;
.super Landroid/os/Handler;
.source "SmsServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 322
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 325
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message timeout - what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", obj : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mRetransCount :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$700(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$200(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_TIMEOUT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 328
    .local v0, "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    if-nez v0, :cond_0

    .line 329
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "the pending message doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 333
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 334
    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$800(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    .line 337
    .local v9, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 339
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$902(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;I)I

    .line 342
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v2

    .line 343
    .local v2, "msgId":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/vnd.3gpp.sms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 344
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v2

    move v10, v2

    goto :goto_1

    .line 343
    :cond_4
    move v10, v2

    .line 346
    .end local v2    # "msgId":I
    .local v10, "msgId":I
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tpMR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v3, :cond_c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    goto/16 :goto_3

    .line 374
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$700(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v2

    if-ge v2, v3, :cond_d

    .line 375
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1200(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto/16 :goto_3

    .line 357
    :cond_6
    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v9, v2, :cond_7

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$700(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$900(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v3

    if-lt v2, v3, :cond_a

    .line 358
    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    .line 362
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/16 v4, 0x198

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v3, "3"

    move v7, v1

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    goto/16 :goto_3

    .line 359
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/16 v4, 0x194

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v3, "3"

    move v7, v1

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 360
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    const/16 v5, 0x194

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$700(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v8

    move v3, v1

    move v4, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1000(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;IIILjava/lang/String;[BI)V

    goto :goto_3

    .line 364
    :cond_a
    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->isSprint()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$700(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1100(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v3

    if-lt v2, v3, :cond_b

    .line 365
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/16 v4, 0x321

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v3, "3"

    move v7, v1

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 366
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    const/16 v5, 0x321

    .line 367
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 366
    move v3, v1

    move v4, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1000(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;IIILjava/lang/String;[BI)V

    goto :goto_3

    .line 369
    :cond_b
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1200(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    .line 371
    goto :goto_3

    .line 349
    :cond_c
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_d

    .line 350
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v3, "3"

    const-string v5, "FF"

    move v7, v1

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 351
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    const/16 v5, 0x2713

    .line 352
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 351
    move v3, v1

    move v4, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1000(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;IIILjava/lang/String;[BI)V

    .line 382
    :cond_d
    :goto_3
    return-void
.end method
