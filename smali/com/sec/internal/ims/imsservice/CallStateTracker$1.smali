.class Lcom/sec/internal/ims/imsservice/CallStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CallStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/CallStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/CallStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 49
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " extra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v2, "EXTRA_CALL_EVENT"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 56
    .local v2, "callEvent":I
    const-string v4, "EXTRA_TEL_NUMBER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "telNo":Ljava/lang/String;
    const-string v5, "EXTRA_PHONE_ID"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 59
    .local v3, "phoneId":I
    const-string v5, "EXTRA_IS_INCOMING"

    const/4 v6, 0x0

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 59
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 60
    .local v11, "isIncoming":Z
    const-string v5, "EXTRA_IS_CMC_CONNECTED"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 61
    .local v12, "isCmcConnected":Z
    const-string v5, "EXTRA_IS_CMC_CALL"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 63
    .local v13, "isCmcCall":Z
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received call event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isCmcConnected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isCmcCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->isValidSimSlot(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid phoneId - Ignore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 70
    :cond_0
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 71
    .local v5, "calls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 73
    .local v6, "callcounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, v0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {v7}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->access$100(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 74
    iget-object v7, v0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {v7}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->access$100(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Ljava/util/Map;

    .line 75
    iget-object v7, v0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {v7}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->access$200(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Ljava/util/Map;

    move-object v14, v5

    move-object v15, v6

    goto :goto_0

    .line 73
    :cond_1
    move-object v14, v5

    move-object v15, v6

    .line 79
    .end local v5    # "calls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;>;"
    .end local v6    # "callcounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v14, "calls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;>;"
    .local v15, "callcounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    if-eqz v4, :cond_3

    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tel Number length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    const/4 v4, 0x0

    move-object v9, v4

    goto :goto_1

    .line 82
    :cond_2
    move-object v9, v4

    goto :goto_1

    .line 79
    :cond_3
    move-object v9, v4

    .line 87
    .end local v4    # "telNo":Ljava/lang/String;
    .local v9, "telNo":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    .line 88
    .local v4, "normalizedNumber":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    .line 89
    .local v8, "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    const/4 v7, 0x1

    invoke-virtual {v8, v9, v7}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v16

    .line 91
    .local v16, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v16, :cond_4

    .line 92
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_2

    .line 93
    :cond_4
    if-eqz v13, :cond_5

    if-eqz v9, :cond_5

    .line 94
    move-object v4, v9

    move-object v6, v4

    goto :goto_2

    .line 97
    :cond_5
    move-object v6, v4

    .end local v4    # "normalizedNumber":Ljava/lang/String;
    .local v6, "normalizedNumber":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_9

    .line 98
    if-ne v2, v7, :cond_8

    .line 99
    iget-object v4, v0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {v4}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->access$300(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Landroid/content/Context;

    move-result-object v4

    .line 100
    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 101
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v5

    .line 102
    .local v5, "callstate":I
    invoke-interface {v15, v6, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v10, v7

    .line 104
    .local v10, "count":I
    if-lt v10, v7, :cond_7

    if-nez v5, :cond_6

    goto :goto_3

    .line 108
    :cond_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v15, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 105
    :cond_7
    :goto_3
    invoke-interface {v14, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-interface {v15, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    .end local v5    # "callstate":I
    .end local v10    # "count":I
    :goto_4
    move-object v4, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    goto :goto_5

    .line 111
    :cond_8
    new-instance v5, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;

    move-object v4, v5

    move-object v1, v5

    move v5, v2

    move-object/from16 v17, v6

    .end local v6    # "normalizedNumber":Ljava/lang/String;
    .local v17, "normalizedNumber":Ljava/lang/String;
    move/from16 v18, v7

    move v7, v11

    move-object/from16 v19, v8

    .end local v8    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    .local v19, "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    move v8, v12

    move-object/from16 v20, v9

    .end local v9    # "telNo":Ljava/lang/String;
    .local v20, "telNo":Ljava/lang/String;
    move v9, v13

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;-><init>(ILjava/lang/String;ZZZ)V

    move-object/from16 v4, v17

    .end local v17    # "normalizedNumber":Ljava/lang/String;
    .local v4, "normalizedNumber":Ljava/lang/String;
    invoke-interface {v14, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/4 v1, 0x2

    if-ne v2, v1, :cond_a

    .line 113
    invoke-interface {v15, v4, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 114
    .local v1, "count":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 97
    .end local v1    # "count":I
    .end local v4    # "normalizedNumber":Ljava/lang/String;
    .end local v19    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    .end local v20    # "telNo":Ljava/lang/String;
    .restart local v6    # "normalizedNumber":Ljava/lang/String;
    .restart local v8    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    .restart local v9    # "telNo":Ljava/lang/String;
    :cond_9
    move-object v4, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 118
    .end local v6    # "normalizedNumber":Ljava/lang/String;
    .end local v8    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    .end local v9    # "telNo":Ljava/lang/String;
    .restart local v4    # "normalizedNumber":Ljava/lang/String;
    .restart local v19    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    .restart local v20    # "telNo":Ljava/lang/String;
    :cond_a
    :goto_5
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->access$100(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->access$200(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .local v1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    iget-object v5, v0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {v5}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->access$400(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;

    .line 124
    .local v6, "listener":Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;
    invoke-virtual {v6, v1, v3}, Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;->onCallStateChanged(Ljava/util/List;I)V

    .line 125
    .end local v6    # "listener":Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;
    goto :goto_6

    .line 126
    :cond_b
    return-void
.end method
