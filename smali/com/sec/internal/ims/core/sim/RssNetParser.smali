.class Lcom/sec/internal/ims/core/sim/RssNetParser;
.super Ljava/lang/Object;
.source "MnoMap.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkIdentifier"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGcBlockMccList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/RssNetParser;->mContext:Landroid/content/Context;

    .line 142
    iput p2, p0, Lcom/sec/internal/ims/core/sim/RssNetParser;->mPhoneId:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/RssNetParser;->mIdentifiers:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/RssNetParser;->mGcBlockMccList:Ljava/util/ArrayList;

    .line 145
    return-void
.end method

.method private applyAutoUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;I)V
    .locals 31
    .param p1, "autoCache"    # Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    .param p2, "resource"    # I

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_0

    .line 229
    return-void

    .line 232
    :cond_0
    const-string/jumbo v3, "remove_mnomap"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 233
    .local v3, "remove":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v4

    const-string v5, "NetworkIdentifier"

    const-string/jumbo v6, "spname"

    const-string v7, "mnoname"

    const-string v8, "gid2"

    const-string v9, "gid1"

    const-string/jumbo v10, "subset"

    const-string v11, "mccmnc"

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 234
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 235
    .local v4, "removeMnomap":Lcom/google/gson/JsonArray;
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 236
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/gson/JsonElement;

    .line 237
    .local v13, "mnomap":Lcom/google/gson/JsonElement;
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    .line 238
    .local v14, "obj":Lcom/google/gson/JsonObject;
    invoke-virtual {v14, v11}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v14, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 239
    invoke-virtual {v14, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v14, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 240
    invoke-virtual {v14, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 241
    invoke-virtual {v14, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    .line 242
    .local v15, "mccmnc":Ljava/lang/String;
    invoke-virtual {v14, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v23

    .line 243
    .local v23, "subset":Ljava/lang/String;
    invoke-virtual {v14, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 244
    .local v24, "gid1":Ljava/lang/String;
    invoke-virtual {v14, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    .line 245
    .local v25, "gid2":Ljava/lang/String;
    const-string v16, ""

    .line 246
    .local v16, "spname":Ljava/lang/String;
    invoke-virtual {v14, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 247
    invoke-virtual {v14, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v26, v16

    goto :goto_1

    .line 246
    :cond_1
    move-object/from16 v26, v16

    .line 249
    .end local v16    # "spname":Ljava/lang/String;
    .local v26, "spname":Ljava/lang/String;
    :goto_1
    invoke-virtual {v14, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    move-object/from16 v27, v3

    .end local v3    # "remove":Lcom/google/gson/JsonElement;
    .local v27, "remove":Lcom/google/gson/JsonElement;
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "mnoName":Ljava/lang/String;
    move-object/from16 v28, v4

    .end local v4    # "removeMnomap":Lcom/google/gson/JsonArray;
    .local v28, "removeMnomap":Lcom/google/gson/JsonArray;
    iget-object v4, v0, Lcom/sec/internal/ims/core/sim/RssNetParser;->mIdentifiers:Ljava/util/ArrayList;

    move-object/from16 v29, v12

    new-instance v12, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    move-object/from16 v16, v12

    move-object/from16 v17, v15

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v22}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AutoUpdate : remove MnoMap"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 240
    .end local v15    # "mccmnc":Ljava/lang/String;
    .end local v23    # "subset":Ljava/lang/String;
    .end local v24    # "gid1":Ljava/lang/String;
    .end local v25    # "gid2":Ljava/lang/String;
    .end local v26    # "spname":Ljava/lang/String;
    .end local v27    # "remove":Lcom/google/gson/JsonElement;
    .end local v28    # "removeMnomap":Lcom/google/gson/JsonArray;
    .local v3, "remove":Lcom/google/gson/JsonElement;
    .restart local v4    # "removeMnomap":Lcom/google/gson/JsonArray;
    :cond_2
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v12

    .end local v3    # "remove":Lcom/google/gson/JsonElement;
    .end local v4    # "removeMnomap":Lcom/google/gson/JsonArray;
    .restart local v27    # "remove":Lcom/google/gson/JsonElement;
    .restart local v28    # "removeMnomap":Lcom/google/gson/JsonArray;
    goto :goto_2

    .line 239
    .end local v27    # "remove":Lcom/google/gson/JsonElement;
    .end local v28    # "removeMnomap":Lcom/google/gson/JsonArray;
    .restart local v3    # "remove":Lcom/google/gson/JsonElement;
    .restart local v4    # "removeMnomap":Lcom/google/gson/JsonArray;
    :cond_3
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v12

    .end local v3    # "remove":Lcom/google/gson/JsonElement;
    .end local v4    # "removeMnomap":Lcom/google/gson/JsonArray;
    .restart local v27    # "remove":Lcom/google/gson/JsonElement;
    .restart local v28    # "removeMnomap":Lcom/google/gson/JsonArray;
    goto :goto_2

    .line 238
    .end local v27    # "remove":Lcom/google/gson/JsonElement;
    .end local v28    # "removeMnomap":Lcom/google/gson/JsonArray;
    .restart local v3    # "remove":Lcom/google/gson/JsonElement;
    .restart local v4    # "removeMnomap":Lcom/google/gson/JsonArray;
    :cond_4
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v12

    .line 254
    .end local v3    # "remove":Lcom/google/gson/JsonElement;
    .end local v4    # "removeMnomap":Lcom/google/gson/JsonArray;
    .end local v13    # "mnomap":Lcom/google/gson/JsonElement;
    .end local v14    # "obj":Lcom/google/gson/JsonObject;
    .restart local v27    # "remove":Lcom/google/gson/JsonElement;
    .restart local v28    # "removeMnomap":Lcom/google/gson/JsonArray;
    :goto_2
    move-object/from16 v3, v27

    move-object/from16 v4, v28

    move-object/from16 v12, v29

    goto/16 :goto_0

    .line 236
    .end local v27    # "remove":Lcom/google/gson/JsonElement;
    .end local v28    # "removeMnomap":Lcom/google/gson/JsonArray;
    .restart local v3    # "remove":Lcom/google/gson/JsonElement;
    .restart local v4    # "removeMnomap":Lcom/google/gson/JsonArray;
    :cond_5
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .end local v3    # "remove":Lcom/google/gson/JsonElement;
    .end local v4    # "removeMnomap":Lcom/google/gson/JsonArray;
    .restart local v27    # "remove":Lcom/google/gson/JsonElement;
    .restart local v28    # "removeMnomap":Lcom/google/gson/JsonArray;
    goto :goto_3

    .line 235
    .end local v27    # "remove":Lcom/google/gson/JsonElement;
    .end local v28    # "removeMnomap":Lcom/google/gson/JsonArray;
    .restart local v3    # "remove":Lcom/google/gson/JsonElement;
    .restart local v4    # "removeMnomap":Lcom/google/gson/JsonArray;
    :cond_6
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .end local v3    # "remove":Lcom/google/gson/JsonElement;
    .end local v4    # "removeMnomap":Lcom/google/gson/JsonArray;
    .restart local v27    # "remove":Lcom/google/gson/JsonElement;
    .restart local v28    # "removeMnomap":Lcom/google/gson/JsonArray;
    goto :goto_3

    .line 233
    .end local v27    # "remove":Lcom/google/gson/JsonElement;
    .end local v28    # "removeMnomap":Lcom/google/gson/JsonArray;
    .restart local v3    # "remove":Lcom/google/gson/JsonElement;
    :cond_7
    move-object/from16 v27, v3

    .line 258
    .end local v3    # "remove":Lcom/google/gson/JsonElement;
    .restart local v27    # "remove":Lcom/google/gson/JsonElement;
    :goto_3
    const-string v3, "add_mnomap"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 259
    .local v3, "add":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 260
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 261
    .local v4, "addMnomap":Lcom/google/gson/JsonArray;
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v12

    if-lez v12, :cond_d

    .line 262
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/gson/JsonElement;

    .line 263
    .restart local v13    # "mnomap":Lcom/google/gson/JsonElement;
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    .line 264
    .restart local v14    # "obj":Lcom/google/gson/JsonObject;
    invoke-virtual {v14, v11}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v14, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 265
    invoke-virtual {v14, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 266
    invoke-virtual {v14, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v14, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 267
    invoke-virtual {v14, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    .line 268
    .restart local v15    # "mccmnc":Ljava/lang/String;
    invoke-virtual {v14, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v23

    .line 269
    .restart local v23    # "subset":Ljava/lang/String;
    invoke-virtual {v14, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 270
    .restart local v24    # "gid1":Ljava/lang/String;
    invoke-virtual {v14, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    .line 271
    .restart local v25    # "gid2":Ljava/lang/String;
    invoke-virtual {v14, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    move-object/from16 v26, v3

    .end local v3    # "add":Lcom/google/gson/JsonElement;
    .local v26, "add":Lcom/google/gson/JsonElement;
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "mnoName":Ljava/lang/String;
    const-string v16, ""

    .line 273
    .restart local v16    # "spname":Ljava/lang/String;
    invoke-virtual {v14, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 274
    invoke-virtual {v14, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v28, v16

    goto :goto_5

    .line 273
    :cond_8
    move-object/from16 v28, v16

    .line 276
    .end local v16    # "spname":Ljava/lang/String;
    .local v28, "spname":Ljava/lang/String;
    :goto_5
    move-object/from16 v29, v4

    .end local v4    # "addMnomap":Lcom/google/gson/JsonArray;
    .local v29, "addMnomap":Lcom/google/gson/JsonArray;
    iget-object v4, v0, Lcom/sec/internal/ims/core/sim/RssNetParser;->mIdentifiers:Ljava/util/ArrayList;

    move-object/from16 v30, v6

    new-instance v6, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    move-object/from16 v16, v6

    move-object/from16 v17, v15

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v28

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v22}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoUpdate : add MnoMap : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 266
    .end local v15    # "mccmnc":Ljava/lang/String;
    .end local v23    # "subset":Ljava/lang/String;
    .end local v24    # "gid1":Ljava/lang/String;
    .end local v25    # "gid2":Ljava/lang/String;
    .end local v26    # "add":Lcom/google/gson/JsonElement;
    .end local v28    # "spname":Ljava/lang/String;
    .end local v29    # "addMnomap":Lcom/google/gson/JsonArray;
    .local v3, "add":Lcom/google/gson/JsonElement;
    .restart local v4    # "addMnomap":Lcom/google/gson/JsonArray;
    :cond_9
    move-object/from16 v26, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v6

    .end local v3    # "add":Lcom/google/gson/JsonElement;
    .end local v4    # "addMnomap":Lcom/google/gson/JsonArray;
    .restart local v26    # "add":Lcom/google/gson/JsonElement;
    .restart local v29    # "addMnomap":Lcom/google/gson/JsonArray;
    goto :goto_6

    .line 265
    .end local v26    # "add":Lcom/google/gson/JsonElement;
    .end local v29    # "addMnomap":Lcom/google/gson/JsonArray;
    .restart local v3    # "add":Lcom/google/gson/JsonElement;
    .restart local v4    # "addMnomap":Lcom/google/gson/JsonArray;
    :cond_a
    move-object/from16 v26, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v6

    .end local v3    # "add":Lcom/google/gson/JsonElement;
    .end local v4    # "addMnomap":Lcom/google/gson/JsonArray;
    .restart local v26    # "add":Lcom/google/gson/JsonElement;
    .restart local v29    # "addMnomap":Lcom/google/gson/JsonArray;
    goto :goto_6

    .line 264
    .end local v26    # "add":Lcom/google/gson/JsonElement;
    .end local v29    # "addMnomap":Lcom/google/gson/JsonArray;
    .restart local v3    # "add":Lcom/google/gson/JsonElement;
    .restart local v4    # "addMnomap":Lcom/google/gson/JsonArray;
    :cond_b
    move-object/from16 v26, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v6

    .line 280
    .end local v3    # "add":Lcom/google/gson/JsonElement;
    .end local v4    # "addMnomap":Lcom/google/gson/JsonArray;
    .end local v13    # "mnomap":Lcom/google/gson/JsonElement;
    .end local v14    # "obj":Lcom/google/gson/JsonObject;
    .restart local v26    # "add":Lcom/google/gson/JsonElement;
    .restart local v29    # "addMnomap":Lcom/google/gson/JsonArray;
    :goto_6
    move-object/from16 v3, v26

    move-object/from16 v4, v29

    move-object/from16 v6, v30

    goto/16 :goto_4

    .line 262
    .end local v26    # "add":Lcom/google/gson/JsonElement;
    .end local v29    # "addMnomap":Lcom/google/gson/JsonArray;
    .restart local v3    # "add":Lcom/google/gson/JsonElement;
    .restart local v4    # "addMnomap":Lcom/google/gson/JsonArray;
    :cond_c
    move-object/from16 v26, v3

    move-object/from16 v29, v4

    .end local v3    # "add":Lcom/google/gson/JsonElement;
    .end local v4    # "addMnomap":Lcom/google/gson/JsonArray;
    .restart local v26    # "add":Lcom/google/gson/JsonElement;
    .restart local v29    # "addMnomap":Lcom/google/gson/JsonArray;
    goto :goto_7

    .line 261
    .end local v26    # "add":Lcom/google/gson/JsonElement;
    .end local v29    # "addMnomap":Lcom/google/gson/JsonArray;
    .restart local v3    # "add":Lcom/google/gson/JsonElement;
    .restart local v4    # "addMnomap":Lcom/google/gson/JsonArray;
    :cond_d
    move-object/from16 v26, v3

    move-object/from16 v29, v4

    .end local v3    # "add":Lcom/google/gson/JsonElement;
    .end local v4    # "addMnomap":Lcom/google/gson/JsonArray;
    .restart local v26    # "add":Lcom/google/gson/JsonElement;
    .restart local v29    # "addMnomap":Lcom/google/gson/JsonArray;
    goto :goto_7

    .line 259
    .end local v26    # "add":Lcom/google/gson/JsonElement;
    .end local v29    # "addMnomap":Lcom/google/gson/JsonArray;
    .restart local v3    # "add":Lcom/google/gson/JsonElement;
    :cond_e
    move-object/from16 v26, v3

    .line 284
    .end local v3    # "add":Lcom/google/gson/JsonElement;
    .restart local v26    # "add":Lcom/google/gson/JsonElement;
    :goto_7
    const-string/jumbo v3, "replace_gc_block_mcc_list"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 285
    .local v3, "gcBlockReplaceList":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 286
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 287
    .local v4, "gcBlocReplacekListArray":Lcom/google/gson/JsonArray;
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 288
    iget-object v5, v0, Lcom/sec/internal/ims/core/sim/RssNetParser;->mGcBlockMccList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 289
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 290
    .local v6, "je":Lcom/google/gson/JsonElement;
    iget-object v7, v0, Lcom/sec/internal/ims/core/sim/RssNetParser;->mGcBlockMccList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v6    # "je":Lcom/google/gson/JsonElement;
    goto :goto_8

    .line 294
    .end local v4    # "gcBlocReplacekListArray":Lcom/google/gson/JsonArray;
    :cond_f
    return-void
.end method

.method private parseNetworkInfo()V
    .locals 20

    .line 157
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 159
    .local v0, "inputStream":Ljava/io/InputStream;
    const-string v2, "NetworkIdentifier"

    const-string/jumbo v3, "parseNetworkInfo: getResources from mnomap.json"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, v1, Lcom/sec/internal/ims/core/sim/RssNetParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 163
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 164
    .local v0, "parser":Lcom/google/gson/JsonParser;
    new-instance v4, Lcom/google/gson/stream/JsonReader;

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v4, v5}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 165
    .local v4, "reader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 166
    .local v5, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v4}, Lcom/google/gson/stream/JsonReader;->close()V

    .line 167
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 168
    .local v6, "object":Lcom/google/gson/JsonObject;
    const-string v7, "mnomap"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v7

    .line 169
    .local v7, "mnomapArray":Lcom/google/gson/JsonArray;
    const-string v8, "gc_block_mcc_list"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    .line 171
    .local v8, "gcMccBlockArray":Lcom/google/gson/JsonArray;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 172
    iget-object v9, v1, Lcom/sec/internal/ims/core/sim/RssNetParser;->mGcBlockMccList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 173
    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/JsonElement;

    .line 174
    .local v10, "je":Lcom/google/gson/JsonElement;
    iget-object v11, v1, Lcom/sec/internal/ims/core/sim/RssNetParser;->mGcBlockMccList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    nop

    .end local v10    # "je":Lcom/google/gson/JsonElement;
    goto :goto_0

    .line 178
    :cond_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->isJsonArray()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 179
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    .line 180
    .local v9, "elem":Lcom/google/gson/JsonElement;
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 181
    .local v10, "obj":Lcom/google/gson/JsonObject;
    const-string v11, "mccmnc"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    .line 182
    .local v13, "mccmnc":Ljava/lang/String;
    const-string/jumbo v11, "subset"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v14

    .line 183
    .local v14, "subset":Ljava/lang/String;
    const-string v11, "gid1"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    .line 184
    .local v15, "gid1":Ljava/lang/String;
    const-string v11, "gid2"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 185
    .local v16, "gid2":Ljava/lang/String;
    const-string/jumbo v11, "spname"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v17

    .line 186
    .local v17, "spname":Ljava/lang/String;
    const-string v11, "mnoname"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v18

    .line 187
    .local v18, "mnoName":Ljava/lang/String;
    iget-object v11, v1, Lcom/sec/internal/ims/core/sim/RssNetParser;->mIdentifiers:Ljava/util/ArrayList;

    new-instance v12, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    move-object/from16 v19, v12

    invoke-direct/range {v12 .. v18}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v19

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    nop

    .end local v9    # "elem":Lcom/google/gson/JsonElement;
    .end local v10    # "obj":Lcom/google/gson/JsonObject;
    .end local v13    # "mccmnc":Ljava/lang/String;
    .end local v14    # "subset":Ljava/lang/String;
    .end local v15    # "gid1":Ljava/lang/String;
    .end local v16    # "gid2":Ljava/lang/String;
    .end local v17    # "spname":Ljava/lang/String;
    .end local v18    # "mnoName":Ljava/lang/String;
    goto :goto_1

    .line 190
    :cond_1
    iget-object v2, v1, Lcom/sec/internal/ims/core/sim/RssNetParser;->mContext:Landroid/content/Context;

    iget v9, v1, Lcom/sec/internal/ims/core/sim/RssNetParser;->mPhoneId:I

    invoke-static {v2, v9}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v2

    .line 191
    .local v2, "autoCache":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->loadMnomapAutoUpdate()Z

    .line 192
    iget v9, v1, Lcom/sec/internal/ims/core/sim/RssNetParser;->mPhoneId:I

    iget-object v10, v1, Lcom/sec/internal/ims/core/sim/RssNetParser;->mContext:Landroid/content/Context;

    const-string v11, "carrierId"

    const-string v12, "needMnoUpdate"

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 193
    iget v9, v1, Lcom/sec/internal/ims/core/sim/RssNetParser;->mPhoneId:I

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->loadCarrierFeature(I)Z

    .line 200
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isForceSMKUpdate()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v9, :cond_3

    .line 201
    invoke-direct {v1, v2, v12}, Lcom/sec/internal/ims/core/sim/RssNetParser;->applyAutoUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;I)V

    .line 202
    invoke-direct {v1, v2, v11}, Lcom/sec/internal/ims/core/sim/RssNetParser;->applyAutoUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;I)V

    .line 203
    invoke-direct {v1, v2, v10}, Lcom/sec/internal/ims/core/sim/RssNetParser;->applyAutoUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;I)V

    .line 204
    invoke-direct {v1, v2, v13}, Lcom/sec/internal/ims/core/sim/RssNetParser;->applyAutoUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;I)V

    goto :goto_2

    .line 206
    :cond_3
    invoke-direct {v1, v2, v13}, Lcom/sec/internal/ims/core/sim/RssNetParser;->applyAutoUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;I)V

    .line 207
    invoke-direct {v1, v2, v12}, Lcom/sec/internal/ims/core/sim/RssNetParser;->applyAutoUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;I)V

    .line 208
    invoke-direct {v1, v2, v11}, Lcom/sec/internal/ims/core/sim/RssNetParser;->applyAutoUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;I)V

    .line 209
    invoke-direct {v1, v2, v10}, Lcom/sec/internal/ims/core/sim/RssNetParser;->applyAutoUpdate(Lcom/sec/internal/ims/settings/ImsAutoUpdate;I)V

    .line 211
    .end local v2    # "autoCache":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    :goto_2
    goto :goto_3

    .line 212
    :cond_4
    const-string v9, "array is null. Check your mnomap.json."

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v0    # "parser":Lcom/google/gson/JsonParser;
    .end local v4    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v5    # "element":Lcom/google/gson/JsonElement;
    .end local v6    # "object":Lcom/google/gson/JsonObject;
    .end local v7    # "mnomapArray":Lcom/google/gson/JsonArray;
    .end local v8    # "gcMccBlockArray":Lcom/google/gson/JsonArray;
    :goto_3
    if-eqz v3, :cond_5

    .line 219
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 217
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_6

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_5

    .line 219
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 222
    :goto_4
    goto :goto_5

    .line 220
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 221
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_4

    .line 225
    :cond_5
    :goto_5
    return-void

    .line 217
    :goto_6
    if-eqz v3, :cond_6

    .line 219
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 222
    goto :goto_7

    .line 220
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 221
    .restart local v0    # "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 224
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_6
    :goto_7
    throw v2
.end method


# virtual methods
.method public getGcBlockList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/RssNetParser;->mGcBlockMccList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getRssNetwokrInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/RssNetParser;->parseNetworkInfo()V

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/RssNetParser;->mIdentifiers:Ljava/util/ArrayList;

    return-object v0
.end method
