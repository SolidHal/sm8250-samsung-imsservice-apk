.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->display(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

.field final eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

.field final eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

.field final hasPin:Z

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

.field final synthetic val$callback:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

.field final synthetic val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

.field final synthetic val$lang:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    .line 153
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$callback:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    invoke-interface {p2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 155
    invoke-interface {p2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 156
    new-instance p2, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    invoke-interface {p3}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 157
    invoke-interface {p4}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 158
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    invoke-interface {p2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getPin()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->hasPin:Z

    return-void
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;
    .param p1, "x1"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .param p2, "x2"    # Landroid/widget/EditText;

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->onClickAction(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V

    return-void
.end method

.method private onClickAction(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V
    .locals 2
    .param p1, "response"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .param p2, "pinInput"    # Landroid/widget/EditText;

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$300(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$200(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 162
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$500(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 166
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$500(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 167
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v2, 0x7f040001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, "inputBoxWithLabel":Landroid/view/View;
    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 170
    .local v3, "input":Landroid/widget/EditText;
    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->hasPin:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 171
    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 173
    const v4, 0x7f020007

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 175
    const v4, 0x7f020008

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 176
    .local v4, "showPin":Landroid/widget/CheckBox;
    new-instance v6, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$1;

    invoke-direct {v6, p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    .end local v4    # "showPin":Landroid/widget/CheckBox;
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 191
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 194
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getAcceptButton()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "acceptLabel":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 196
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$5;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucType:[I

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unsupported euc type for display!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$500(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    goto :goto_1

    .line 199
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$500(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 212
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getRejectButton()Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "rejectLabel":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 214
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$500(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 218
    :cond_5
    new-instance v7, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$2;

    invoke-direct {v7, p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$2;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    if-eq v7, v8, :cond_6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    if-ne v7, v8, :cond_7

    .line 230
    :cond_6
    new-instance v7, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$3;

    invoke-direct {v7, p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$3;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    :cond_7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 242
    .local v7, "dialog":Landroid/app/AlertDialog;
    iget-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->hasPin:Z

    if-eqz v8, :cond_8

    .line 243
    new-instance v8, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;

    invoke-direct {v8, p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Landroid/widget/EditText;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 280
    :cond_8
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 281
    .local v8, "window":Landroid/view/Window;
    if-eqz v8, :cond_9

    .line 282
    const/16 v9, 0x7f6

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 284
    :cond_9
    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 285
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$200(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v5, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 289
    const v5, 0x7f020004

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    .line 290
    invoke-interface {v9, v10}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getText()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;

    invoke-direct {v10, p0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;)V

    .line 289
    invoke-static {v5, v9, v10}, Lcom/sec/internal/helper/userconsent/HyperlinkUtils;->processLinks(Landroid/widget/TextView;Ljava/lang/String;Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;)V

    .line 312
    return-void
.end method
