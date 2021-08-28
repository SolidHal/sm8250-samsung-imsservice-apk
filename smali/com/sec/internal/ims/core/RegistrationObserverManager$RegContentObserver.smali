.class Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;
.super Landroid/database/ContentObserver;
.source "RegistrationObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationObserverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationObserverManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 499
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 500
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 501
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 505
    invoke-static {}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$000()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 506
    .local v0, "match":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " => match ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiObsMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    .line 508
    .local v1, "phoneId":I
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 509
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query : Exist simslot on uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 580
    :pswitch_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_1

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    :goto_0
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$1500(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V

    .line 581
    goto/16 :goto_4

    .line 550
    :pswitch_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {v2, p2, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$800(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/net/Uri;I)V

    .line 551
    goto/16 :goto_4

    .line 575
    :pswitch_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$1400(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V

    .line 576
    goto/16 :goto_4

    .line 571
    :pswitch_4
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$1300(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V

    .line 572
    goto :goto_4

    .line 567
    :pswitch_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$1200(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V

    .line 568
    goto :goto_4

    .line 563
    :pswitch_6
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$1100(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V

    .line 564
    goto :goto_4

    .line 559
    :pswitch_7
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    :goto_1
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$1000(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V

    .line 560
    goto :goto_4

    .line 554
    :pswitch_8
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {v2, p2, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$900(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/net/Uri;I)V

    .line 555
    goto :goto_4

    .line 546
    :pswitch_9
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {v2, p2, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$700(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/net/Uri;I)V

    .line 547
    goto :goto_4

    .line 537
    :pswitch_a
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$600(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V

    .line 538
    goto :goto_4

    .line 533
    :pswitch_b
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$500(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V

    .line 534
    goto :goto_4

    .line 529
    :pswitch_c
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$400(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V

    .line 530
    goto :goto_4

    .line 525
    :pswitch_d
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$300(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V

    .line 526
    goto :goto_4

    .line 521
    :pswitch_e
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    :goto_2
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$200(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V

    .line 522
    goto :goto_4

    .line 516
    :pswitch_f
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    if-nez v0, :cond_4

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    goto :goto_3

    :cond_4
    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    :goto_3
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->access$100(Lcom/sec/internal/ims/core/RegistrationObserverManager;I)V

    .line 517
    nop

    .line 586
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method
