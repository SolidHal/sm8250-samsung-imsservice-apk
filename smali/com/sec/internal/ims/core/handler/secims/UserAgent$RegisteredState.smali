.class Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;
.super Lcom/sec/internal/helper/State;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisteredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;

    .line 1214
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private onRegInfoNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;)V
    .locals 8
    .param p1, "regInfo"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;

    .line 1679
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    const-string v1, "UserAgent"

    const-string v2, "onRegInfoNotify:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1700(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegInfoNotify: unexpected RegInfoNotify. mHandle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    return-void

    .line 1686
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;->contactsLength()I

    move-result v0

    new-array v0, v0, [Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;

    .line 1687
    .local v0, "contactList":[Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1688
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;->contacts(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1687
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1690
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 1691
    .local v4, "contact":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;
    new-instance v5, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;->displayName()Ljava/lang/String;

    move-result-object v6

    .line 1692
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;->uri()Ljava/lang/String;

    move-result-object v7

    .line 1691
    invoke-static {v7}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    .line 1693
    .local v5, "addr":Lcom/sec/ims/util/NameAddr;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRegInfoNotify: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;->state()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;->state()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1697
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v6, v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$2000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V

    .line 1698
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v6, v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$2100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V

    goto :goto_2

    .line 1699
    :cond_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;->state()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 1701
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$2200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V

    .line 1702
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v5}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$2300(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V

    .line 1690
    .end local v4    # "contact":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;
    .end local v5    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1705
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1702(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/ImsRegistration;

    .line 1706
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1707
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRegistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1709
    :cond_5
    return-void
.end method

.method private onRegistered()V
    .locals 3

    .line 1668
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1702(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/ImsRegistration;

    .line 1670
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1671
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1700(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1670
    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->setPreferredImpu(ILjava/lang/String;)V

    .line 1673
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRegistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1676
    :cond_0
    return-void
.end method

.method private sendSms(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1712
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "sca"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1713
    .local v2, "scaUri":Ljava/lang/String;
    const-string v3, "localuri"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1715
    .local v12, "localUri":Ljava/lang/String;
    const-string/jumbo v3, "pdu"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->bytesToHex([B)Ljava/lang/String;

    move-result-object v13

    .line 1716
    .local v13, "hexStr":Ljava/lang/String;
    const-string v3, "contentType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1717
    .local v14, "contentType":Ljava/lang/String;
    const-string v3, "]"

    const-string v4, "UserAgent["

    if-nez v14, :cond_0

    .line 1718
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sendSms: null contentType. "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    return-void

    .line 1721
    :cond_0
    const-string v5, "/"

    invoke-virtual {v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1722
    .local v15, "cTypes":[Ljava/lang/String;
    array-length v5, v15

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 1723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendSms: invalid contentType. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    return-void

    .line 1726
    :cond_1
    const-string v3, "callId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1728
    .local v16, "callId":Ljava/lang/String;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v8, v15, v5

    const/4 v5, 0x1

    aget-object v9, v15, v5

    .line 1730
    const-string/jumbo v5, "result"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/os/Message;

    .line 1728
    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v10, v16

    invoke-interface/range {v3 .. v11}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1731
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1217
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1218
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->onRegistered()V

    .line 1219
    return-void
.end method

.method public exit()V
    .locals 5

    .line 1223
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne v0, v1, :cond_0

    .line 1224
    return-void

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1228
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-eq v0, v1, :cond_2

    .line 1229
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1231
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit: Unknown error."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->UNKNOWN_LOCAL_ERROR:Lcom/sec/ims/util/SipError;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1502(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v2, 0x0

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/util/SipError;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1600(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onDeregistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ZLcom/sec/ims/util/SipError;I)V

    .line 1239
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 1240
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1702(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/ImsRegistration;

    .line 1242
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1502(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 1243
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 37
    .param p1, "msg"    # Landroid/os/Message;

    .line 1247
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 1249
    .local v2, "retVal":Z
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    const/4 v4, 0x6

    if-eq v3, v4, :cond_7

    const/16 v4, 0x65

    if-eq v3, v4, :cond_6

    const/16 v4, 0x66

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_4

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_3

    const-string v4, "dispName"

    const-string/jumbo v7, "reason"

    const-string/jumbo v8, "targetUri"

    const-string/jumbo v9, "supportPrematureEnd"

    const-string/jumbo v10, "useAnonymousUpdate"

    const-string/jumbo v11, "referUriAsserted"

    const-string/jumbo v12, "removeReferUriType"

    const-string/jumbo v13, "referUriType"

    const-string v14, "dialogType"

    const-string v15, "eventSubscribe"

    const-string v5, "confuri"

    const-string v6, "additionalContentsMime"

    move/from16 v16, v2

    .end local v2    # "retVal":Z
    .local v16, "retVal":Z
    const-string v2, "additionalContentsContents"

    move-object/from16 v17, v8

    const-string v8, "calltype"

    move-object/from16 v18, v4

    const-string/jumbo v4, "origUri"

    move-object/from16 v20, v6

    const-string/jumbo v6, "result"

    move-object/from16 v21, v2

    const-string/jumbo v2, "sessionId"

    sparse-switch v3, :sswitch_data_0

    packed-switch v3, :pswitch_data_0

    move-object/from16 v22, v7

    const-string/jumbo v7, "participants"

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    packed-switch v3, :pswitch_data_4

    packed-switch v3, :pswitch_data_5

    packed-switch v3, :pswitch_data_6

    .line 1660
    const/4 v2, 0x0

    .end local v16    # "retVal":Z
    .restart local v2    # "retVal":Z
    goto/16 :goto_3

    .line 1517
    .end local v2    # "retVal":Z
    .restart local v16    # "retVal":Z
    :pswitch_0
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1518
    .local v3, "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1519
    const-string v5, "oldQual"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "newQual"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1518
    invoke-interface {v4, v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->modifyVideoQuality(III)V

    .line 1520
    goto/16 :goto_2

    .line 1637
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->stopLocalRingBackTone(I)V

    .line 1638
    goto/16 :goto_2

    .line 1631
    :pswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1632
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v8

    const-string/jumbo v3, "streamType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v3, "volume"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1633
    const-string/jumbo v3, "toneType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/os/Message;

    .line 1632
    invoke-interface/range {v7 .. v12}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startLocalRingBackTone(IIIILandroid/os/Message;)V

    .line 1634
    goto/16 :goto_2

    .line 1414
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1415
    .restart local v2    # "bundle":Landroid/os/Bundle;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v17

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v18

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1416
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1417
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1418
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1419
    const-string/jumbo v3, "sessId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1420
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1421
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1422
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1423
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1424
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    .line 1415
    invoke-interface/range {v17 .. v30}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->extendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1425
    goto/16 :goto_2

    .line 1537
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_4
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1538
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1539
    move-object/from16 v5, v22

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1538
    invoke-interface {v4, v2, v5}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->rejectModifyCallType(II)V

    .line 1540
    goto/16 :goto_2

    .line 1530
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_5
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1531
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1532
    const-string/jumbo v2, "reqType"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v2, "curType"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1533
    const-string/jumbo v2, "repType"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v2, "cmcCallTime"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1531
    invoke-interface/range {v5 .. v10}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->replyModifyCallType(IIIILjava/lang/String;)V

    .line 1534
    goto/16 :goto_2

    .line 1524
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_6
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1525
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1526
    const-string v5, "oldType"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "newType"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1525
    invoke-interface {v4, v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->modifyCallType(III)V

    .line 1527
    goto/16 :goto_2

    .line 1595
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_7
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1597
    .restart local v3    # "bundle":Landroid/os/Bundle;
    move-object/from16 v5, v21

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1598
    .local v4, "cmcInfoContents":Ljava/lang/String;
    move-object/from16 v7, v20

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1600
    .local v5, "cmcMimeType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1601
    .local v6, "cmcAddC":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    new-instance v7, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1602
    .local v7, "cmcBuilder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v7, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1603
    .local v8, "cmcContentsOffset":I
    invoke-virtual {v7, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1604
    .local v9, "cmcMimeOffset":I
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1605
    invoke-static {v7, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1606
    invoke-static {v7, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1607
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 1608
    invoke-virtual {v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v6

    .line 1610
    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v10

    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v11

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v11, v2, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V

    .line 1612
    goto/16 :goto_2

    .line 1651
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "cmcInfoContents":Ljava/lang/String;
    .end local v5    # "cmcMimeType":Ljava/lang/String;
    .end local v6    # "cmcAddC":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .end local v7    # "cmcBuilder":Lcom/google/flatbuffers/FlatBufferBuilder;
    .end local v8    # "cmcContentsOffset":I
    .end local v9    # "cmcMimeOffset":I
    :pswitch_8
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1652
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v17

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v18

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string v2, "audioSource"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1653
    const-string/jumbo v2, "outputFormat"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    const-string v2, "maxFileSize"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v2, "maxDuration"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 1654
    const-string/jumbo v2, "outputPath"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v2, "audioEncodingBR"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    const-string v2, "audioChannels"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 1655
    const-string v2, "audioSamplingR"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v28

    const-string v2, "audioEncoder"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v29

    const-string v2, "durationInterval"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 1656
    const-string v2, "fileSizeInterval"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v31

    const-string v2, "author"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1652
    invoke-interface/range {v17 .. v33}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)V

    .line 1657
    goto/16 :goto_2

    .line 1646
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_9
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1647
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v5, v2}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->stopRecord(II)V

    .line 1648
    goto/16 :goto_2

    .line 1641
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_a
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1642
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "filePath"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v2, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startRecord(IILjava/lang/String;)V

    .line 1643
    goto/16 :goto_2

    .line 1620
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_b
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1621
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v5, v2}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->handleCmcCsfb(II)V

    .line 1622
    goto/16 :goto_2

    .line 1615
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_c
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1616
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v5, v2}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startVideoEarlyMedia(II)V

    .line 1617
    goto/16 :goto_2

    .line 1555
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_d
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->deleteTcpClientSocket(I)V

    .line 1556
    goto/16 :goto_2

    .line 1574
    :pswitch_e
    move-object/from16 v7, v20

    move-object/from16 v5, v21

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1576
    .restart local v3    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1577
    .local v4, "infoContents":Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1579
    .local v5, "mimeType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1580
    .local v7, "addC":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    new-instance v9, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1581
    .local v9, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1582
    .local v10, "contentsOffset":I
    invoke-virtual {v9, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1583
    .local v11, "mimeOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1584
    invoke-static {v9, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1585
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1586
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 1587
    invoke-virtual {v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v7

    .line 1589
    iget-object v12, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v17

    iget-object v12, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v18

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 1590
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string/jumbo v2, "ussdtype"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 1591
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/os/Message;

    .line 1589
    move-object/from16 v22, v7

    invoke-interface/range {v17 .. v23}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V

    .line 1592
    goto/16 :goto_2

    .line 1464
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "infoContents":Ljava/lang/String;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v7    # "addC":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .end local v9    # "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    .end local v10    # "contentsOffset":I
    .end local v11    # "mimeOffset":I
    :pswitch_f
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1465
    .restart local v2    # "bundle":Landroid/os/Bundle;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v8

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1466
    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "body"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1467
    const-string v3, "expires"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1468
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/os/Message;

    .line 1465
    invoke-interface/range {v7 .. v13}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1469
    goto/16 :goto_2

    .line 1570
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_10
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->requestUnpublish(I)V

    .line 1571
    goto/16 :goto_2

    .line 1563
    :pswitch_11
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1564
    .restart local v2    # "bundle":Landroid/os/Bundle;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    .line 1565
    const-string/jumbo v5, "presenceInfo"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/presence/PresenceInfo;

    .line 1566
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 1564
    invoke-interface {v3, v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->requestPublish(ILcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V

    .line 1567
    goto/16 :goto_2

    .line 1559
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_12
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateVceConfig(IZ)V

    .line 1560
    goto/16 :goto_2

    .line 1551
    :pswitch_13
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2, v3, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->networkSuspended(IZ)V

    .line 1552
    goto/16 :goto_2

    .line 1543
    :pswitch_14
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1544
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1545
    const-string v2, "action"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1546
    const-string v2, "codecType"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1547
    const-string v2, "cause"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v2, "reasonText"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1544
    invoke-interface/range {v5 .. v10}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateCall(IIIILjava/lang/String;)V

    .line 1548
    goto/16 :goto_2

    .line 1400
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_15
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1401
    .restart local v2    # "bundle":Landroid/os/Bundle;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v17

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v18

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1402
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1403
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1404
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1405
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1406
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1407
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1408
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1409
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    .line 1410
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/os/Message;

    .line 1401
    invoke-interface/range {v17 .. v30}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->conference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    .line 1411
    goto/16 :goto_2

    .line 1428
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_16
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1429
    .restart local v2    # "bundle":Landroid/os/Bundle;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    const-string v3, "confsession"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1430
    const-string/jumbo v3, "updateCmd"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v3, "participantId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1431
    const-string/jumbo v3, "participant"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1429
    invoke-interface/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateConfCall(IIIILjava/lang/String;)V

    .line 1432
    goto/16 :goto_2

    .line 1493
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_17
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendSmsResponse(ILjava/lang/String;I)V

    .line 1494
    goto/16 :goto_2

    .line 1489
    :pswitch_18
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendSmsRpAckResponse(ILjava/lang/String;)V

    .line 1490
    goto/16 :goto_2

    .line 1485
    :pswitch_19
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->sendSms(Landroid/os/Bundle;)V

    .line 1486
    goto/16 :goto_2

    .line 1381
    :pswitch_1a
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->stopCamera(I)V

    .line 1382
    goto/16 :goto_2

    .line 1448
    :pswitch_1b
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1450
    .restart local v2    # "bundle":Landroid/os/Bundle;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v8

    const-string/jumbo v3, "pullingUri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1451
    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1452
    const-string/jumbo v3, "targetDialog"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/sec/ims/Dialog;

    .line 1453
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/os/Message;

    .line 1450
    invoke-interface/range {v7 .. v13}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Landroid/os/Message;)V

    .line 1454
    goto/16 :goto_2

    .line 1375
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_1c
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1376
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1377
    const-string v6, "cameraId"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1376
    invoke-interface {v4, v5, v2, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startCamera(III)V

    .line 1378
    goto/16 :goto_2

    .line 1369
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_1d
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1370
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1371
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 1370
    invoke-interface {v4, v5, v2, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->resumeVideo(IILandroid/os/Message;)V

    .line 1372
    goto/16 :goto_2

    .line 1363
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_1e
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1364
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1365
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 1364
    invoke-interface {v4, v5, v2, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->holdVideo(IILandroid/os/Message;)V

    .line 1366
    goto/16 :goto_2

    .line 1338
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_1f
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->progressIncomingCall(IILjava/util/HashMap;Landroid/os/Message;)V

    .line 1340
    goto/16 :goto_2

    .line 1479
    :sswitch_0
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1480
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1481
    const-string/jumbo v6, "text"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "len"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1480
    invoke-interface {v4, v5, v2, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendText(IILjava/lang/String;I)V

    .line 1482
    goto/16 :goto_2

    .line 1442
    .end local v3    # "bundle":Landroid/os/Bundle;
    :sswitch_1
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1443
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1444
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 1443
    invoke-interface {v4, v5, v2, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->cancelTransferCall(IILandroid/os/Message;)V

    .line 1445
    goto/16 :goto_2

    .line 1472
    .end local v3    # "bundle":Landroid/os/Bundle;
    :sswitch_2
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1473
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v8

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1474
    const-string v2, "code"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v2, "mode"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v2, "operation"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1475
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/os/Message;

    .line 1473
    invoke-interface/range {v7 .. v13}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->handleDtmf(IIIIILandroid/os/Message;)V

    .line 1476
    goto/16 :goto_2

    .line 1334
    .end local v3    # "bundle":Landroid/os/Bundle;
    :sswitch_3
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/sec/ims/util/SipError;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->rejectCall(IILcom/sec/ims/util/SipError;Landroid/os/Message;)V

    .line 1335
    goto/16 :goto_2

    .line 1457
    :sswitch_4
    move-object v5, v7

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1458
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v6

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v7

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1459
    const-string v2, "accepted"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string/jumbo v2, "status"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1460
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 1458
    invoke-interface/range {v6 .. v12}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->acceptCallTransfer(IIZILjava/lang/String;Landroid/os/Message;)V

    .line 1461
    goto/16 :goto_2

    .line 1435
    .end local v3    # "bundle":Landroid/os/Bundle;
    :sswitch_5
    move-object/from16 v3, v17

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 1436
    .local v4, "bundle":Landroid/os/Bundle;
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v8

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1437
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "replacingSessionId"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 1438
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/os/Message;

    .line 1436
    invoke-interface/range {v7 .. v12}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->transferCall(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1439
    goto/16 :goto_2

    .line 1385
    .end local v4    # "bundle":Landroid/os/Bundle;
    :sswitch_6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1386
    .restart local v2    # "bundle":Landroid/os/Bundle;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v17

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v18

    const-string/jumbo v3, "session1"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 1387
    const-string/jumbo v3, "session2"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1388
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1389
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1390
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1391
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1392
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1393
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1394
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    .line 1395
    const-string v3, "extraHeaders"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Ljava/util/HashMap;

    .line 1396
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Landroid/os/Message;

    .line 1386
    invoke-interface/range {v17 .. v32}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->mergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V

    .line 1397
    goto/16 :goto_2

    .line 1357
    .end local v2    # "bundle":Landroid/os/Bundle;
    :sswitch_7
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1358
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1359
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 1358
    invoke-interface {v4, v5, v2, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->resumeCall(IILandroid/os/Message;)V

    .line 1360
    goto/16 :goto_2

    .line 1351
    .end local v3    # "bundle":Landroid/os/Bundle;
    :sswitch_8
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1352
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1353
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 1352
    invoke-interface {v4, v5, v2, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->holdCall(IILandroid/os/Message;)V

    .line 1354
    goto/16 :goto_2

    .line 1347
    .end local v3    # "bundle":Landroid/os/Bundle;
    :sswitch_9
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->answerCall(IIILjava/lang/String;)V

    .line 1348
    goto/16 :goto_2

    .line 1343
    :sswitch_a
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->endCall(IILcom/sec/internal/constants/ims/SipReason;Landroid/os/Message;)V

    .line 1344
    goto/16 :goto_2

    .line 1275
    :sswitch_b
    move-object/from16 v3, v18

    move-object/from16 v7, v20

    move-object/from16 v5, v21

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1276
    .restart local v2    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1277
    .local v5, "contents":Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1279
    .local v7, "mime":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1280
    .local v8, "ac":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    .line 1281
    new-instance v9, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1282
    .restart local v9    # "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v9, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1283
    .restart local v10    # "contentsOffset":I
    invoke-virtual {v9, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1284
    .restart local v11    # "mimeOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1285
    invoke-static {v9, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1286
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1287
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 1288
    invoke-virtual {v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v8

    .line 1291
    .end local v9    # "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    .end local v10    # "contentsOffset":I
    .end local v11    # "mimeOffset":I
    :cond_1
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v17

    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v18

    const-string v9, "destUri"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1292
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1293
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 1294
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v3, "dialedNumber"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, -0x1

    .line 1295
    const-string v3, "cli"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1296
    const-string/jumbo v3, "pEmergencyInfoOfAtt"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1298
    const-string v3, "additionalSipHeaders"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Ljava/util/HashMap;

    .line 1299
    const-string v3, "alertInfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1300
    const-string v3, "isLteEpsOnlyAttached"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v31

    .line 1301
    const-string/jumbo v3, "p2p"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v32

    .line 1302
    const-string v3, "cmcBoundSessionId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 1303
    const-string v3, "composer_data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v34

    .line 1304
    const-string/jumbo v3, "replaceCallId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1305
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Landroid/os/Message;

    .line 1291
    move-object/from16 v26, v8

    invoke-interface/range {v17 .. v36}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->makeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/Message;)V

    .line 1331
    goto/16 :goto_2

    .line 1497
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "contents":Ljava/lang/String;
    .end local v7    # "mime":Ljava/lang/String;
    .end local v8    # "ac":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    :sswitch_c
    const/4 v10, 0x0

    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v10

    :goto_1
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1498
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1497
    invoke-interface {v2, v3, v6, v4}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->deregister(IZLandroid/os/Message;)V

    .line 1499
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    .line 1500
    goto/16 :goto_2

    .line 1251
    :sswitch_d
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " reRegistered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UserAgent"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1252
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->onRegistered()V

    .line 1253
    goto/16 :goto_2

    .line 1625
    .end local v16    # "retVal":Z
    .local v2, "retVal":Z
    :cond_3
    move/from16 v16, v2

    .end local v2    # "retVal":Z
    .restart local v16    # "retVal":Z
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1626
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    const-string/jumbo v5, "target"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1627
    const-string v6, "event"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "eventType"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1626
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendMediaEvent(IIII)V

    .line 1628
    goto/16 :goto_2

    .line 1260
    .end local v16    # "retVal":Z
    .local v2, "retVal":Z
    :cond_4
    move/from16 v16, v2

    .end local v2    # "retVal":Z
    .restart local v16    # "retVal":Z
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->send(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    .line 1261
    goto/16 :goto_2

    .line 1510
    .end local v16    # "retVal":Z
    .restart local v2    # "retVal":Z
    :cond_5
    move/from16 v16, v2

    .end local v2    # "retVal":Z
    .restart local v16    # "retVal":Z
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 1511
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1512
    .local v2, "address":Ljava/lang/String;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1800(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILjava/lang/String;)V

    .line 1513
    .end local v2    # "address":Ljava/lang/String;
    goto/16 :goto_2

    .line 1256
    .end local v16    # "retVal":Z
    .local v2, "retVal":Z
    :cond_6
    move/from16 v16, v2

    .end local v2    # "retVal":Z
    .restart local v16    # "retVal":Z
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;

    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->onRegInfoNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;)V

    .line 1257
    goto/16 :goto_2

    .line 1249
    .end local v16    # "retVal":Z
    .restart local v2    # "retVal":Z
    :cond_7
    move/from16 v16, v2

    .line 1264
    .end local v2    # "retVal":Z
    .restart local v16    # "retVal":Z
    :sswitch_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v2, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getServiceList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1266
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfIp()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1267
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfPort()I

    move-result v6

    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRegExpires()I

    move-result v7

    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1268
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getLinkedImpuList()Ljava/util/List;

    move-result-object v9

    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1269
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v10

    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;

    move-result-object v11

    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1270
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getAccessToken()Ljava/lang/String;

    move-result-object v12

    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getAuthServerUrl()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 1266
    move-object v8, v2

    invoke-interface/range {v3 .. v14}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->register(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1271
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    .line 1272
    goto :goto_2

    .line 1504
    .end local v16    # "retVal":Z
    .local v2, "retVal":Z
    :cond_8
    move/from16 v16, v2

    .end local v2    # "retVal":Z
    .restart local v16    # "retVal":Z
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1505
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1504
    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->deregister(IZLandroid/os/Message;)V

    .line 1506
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    .line 1507
    nop

    .line 1664
    :cond_9
    :goto_2
    move/from16 v2, v16

    .end local v16    # "retVal":Z
    .restart local v2    # "retVal":Z
    :goto_3
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_e
        0x8 -> :sswitch_d
        0xa -> :sswitch_c
        0xe -> :sswitch_b
        0xf -> :sswitch_a
        0x10 -> :sswitch_9
        0x11 -> :sswitch_8
        0x12 -> :sswitch_7
        0x13 -> :sswitch_6
        0x14 -> :sswitch_5
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_2
        0x2d -> :sswitch_1
        0x33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2f
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x36
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x68
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x6d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
