.class Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;
.super Landroid/os/Handler;
.source "ServiceAvailabilityEventListenerUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Lcom/sec/internal/ims/util/UriGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    .line 58
    :cond_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;

    .line 60
    .local v2, "data":Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 61
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->getDate()Ljava/util/Date;

    move-result-object v4

    .line 62
    .local v4, "timestamp":Ljava/util/Date;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "ownIdentity":Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v6

    .line 65
    .local v6, "phoneId":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 66
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVT_UPDATE_CAP_TIMESTAMP: failed to find phoneId for ownIdentity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 76
    :cond_1
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->access$100(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 77
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->access$100(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUriGenerator is null, URI["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] may not be normalized!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->access$200(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v7

    .line 85
    .local v7, "caps":Lcom/sec/ims/options/Capabilities;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 90
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 99
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v8}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 100
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    move-object v4, v8

    .line 103
    :cond_3
    const-string v8, ""

    .line 104
    .local v8, "extFeature":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 105
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v9

    const-string v10, ","

    invoke-static {v10, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v23, v8

    goto :goto_1

    .line 104
    :cond_4
    move-object/from16 v23, v8

    .line 107
    .end local v8    # "extFeature":Ljava/lang/String;
    .local v23, "extFeature":Ljava/lang/String;
    :goto_1
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    invoke-static {v8}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->access$200(Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v9

    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v10

    .line 108
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getPidf()Ljava/lang/String;

    move-result-object v15

    .line 109
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getLastSeen()J

    move-result-wide v16

    .line 110
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getPAssertedId()Ljava/util/List;

    move-result-object v19

    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getIsTokenUsed()Z

    move-result v20

    .line 111
    invoke-virtual {v7}, Lcom/sec/ims/options/Capabilities;->getExpCapInfoExpiry()I

    move-result v22

    .line 107
    move-object/from16 v18, v4

    move-object/from16 v21, v23

    invoke-virtual/range {v8 .. v22}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->update(Lcom/sec/ims/util/ImsUri;JJZLjava/lang/String;JLjava/util/Date;Ljava/util/List;ZLjava/lang/String;I)Z

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timestamp for URI["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] updated to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v23    # "extFeature":Ljava/lang/String;
    goto :goto_3

    .line 114
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Message timestamp is older than the last recorded timestamp for URI["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "], ignore."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 114
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 118
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URI["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 119
    const-string v9, "is offline, ignore."

    goto :goto_2

    :cond_7
    const-string v9, "has no caps in db, ignore."

    .line 118
    :goto_2
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v2    # "data":Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp$ServiceAvailabilityUpdateData;
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "timestamp":Ljava/util/Date;
    .end local v5    # "ownIdentity":Ljava/lang/String;
    .end local v6    # "phoneId":I
    .end local v7    # "caps":Lcom/sec/ims/options/Capabilities;
    :goto_3
    return-void
.end method
