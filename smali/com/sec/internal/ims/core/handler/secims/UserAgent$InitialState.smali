.class Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;
.super Lcom/sec/internal/helper/State;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;

    .line 921
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$002(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)I

    .line 926
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 930
    const/4 v0, 0x1

    .line 931
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_a

    const/4 v2, 0x3

    const-string v4, "]"

    const-string v5, "UserAgent["

    const-string v6, "UserAgent"

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 994
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 993
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 987
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " received in  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 988
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " This shouldn\'t be handled here - defer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 987
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deferMessage(Landroid/os/Message;)V

    .line 990
    goto/16 :goto_1

    .line 982
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->deleteUA(ILandroid/os/Message;)V

    .line 983
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    .line 984
    goto/16 :goto_1

    .line 978
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deferMessage(Landroid/os/Message;)V

    .line 979
    goto/16 :goto_1

    .line 973
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    const-string/jumbo v2, "retry UA creation..."

    invoke-static {v6, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 974
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->create()I

    .line 975
    goto/16 :goto_1

    .line 937
    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 938
    .local v1, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v3, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 939
    .local v3, "gr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;
    iget-object v7, v1, Lcom/sec/internal/helper/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_9

    if-eqz v3, :cond_9

    .line 940
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UA created. handle "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->handle()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " result "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " reason "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->reason()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 940
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v4

    if-nez v4, :cond_7

    .line 943
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->handle()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$002(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)I

    .line 945
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$600(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 946
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    const-string v4, "No need for emergency registration. Move to EmergencyState."

    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 949
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$700(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 951
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$800(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 954
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {v5, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    invoke-interface {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->registerUaListener(ILcom/sec/internal/ims/core/handler/secims/StackEventListener;)V

    .line 956
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 957
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onCreated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 959
    :cond_6
    return v0

    .line 960
    :cond_7
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->reason()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_9

    .line 961
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    const-string v4, "create() failed. notify with null agent"

    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 962
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 963
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onCreated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 965
    :cond_8
    return v0

    .line 968
    :cond_9
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    const-string v5, "create() failed. retry 3 seconds later "

    invoke-static {v6, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 969
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessageDelayed(IJ)V

    .line 970
    goto :goto_1

    .line 933
    .end local v1    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v3    # "gr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;
    :cond_a
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->createUA(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Landroid/os/Message;)V

    .line 934
    nop

    .line 999
    :goto_1
    return v0
.end method
