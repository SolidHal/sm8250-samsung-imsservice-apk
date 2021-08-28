.class public Lcom/sec/internal/ims/config/adapters/DialogAdapter;
.super Landroid/os/Handler;
.source "DialogAdapter.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;,
        Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final CANCEL_TC_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

.field static final HANDLE_CREATE_SHOW_ACCEPT_REJECT:I = 0x0

.field static final HANDLE_CREATE_SHOW_AUTOCONFIG:I = 0x5

.field static final HANDLE_CREATE_SHOW_MSISDN:I = 0x2

.field static final HANDLE_SIM_STATE_ABSENT:I = 0x6

.field static final KEY_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final LOG_TAG:Ljava/lang/String;

.field static final RCS_MSISDN_PROMPT_NOTIFICATION:I = 0x3636a01

.field static final RCS_TC_NOTIFICATION:I = 0xa807ad

.field public static final SHOW_MSISDN_POPUP:Ljava/lang/String; = "com.samsung.rcs.framework.dialogadapter.action.SHOW_MSISDN_POPUP"

.field public static final SHOW_TC_POPUP:Ljava/lang/String; = "com.samsung.rcs.framework.dialogadapter.action.SHOW_TC_POPUP"


# instance fields
.field private mAccept:Ljava/lang/String;

.field private mAcceptReject:Z

.field private final mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

.field private mMessage:Ljava/lang/String;

.field private mMsisdn:Ljava/lang/String;

.field private mNextCancel:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhoneId:I

.field private mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

.field private mReject:Ljava/lang/String;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mSkip:Z

.field private mTcPopupFlag:Z

.field private mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mTitle:Ljava/lang/String;

.field private mYesNo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 108
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    .line 84
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    .line 87
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    .line 91
    iput v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    .line 92
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mCountryCode:Ljava/lang/String;

    .line 93
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    .line 94
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    .line 95
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    .line 96
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 126
    new-instance v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    .line 151
    new-instance v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    .line 109
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Init DialogAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    .line 111
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 114
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->registerReceivers()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 104
    iput p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    .line 105
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 63
    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 63
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Lcom/sec/internal/helper/os/ITelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shallRcsRegisterByDefault(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createAcceptRejectBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "accept"    # Ljava/lang/String;
    .param p5, "reject"    # Ljava/lang/String;

    .line 404
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d2

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 407
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 408
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v2, 0x7f040004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 409
    .local v2, "scrollView":Landroid/widget/ScrollView;
    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 410
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 412
    if-eqz p2, :cond_0

    .line 413
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 416
    :cond_0
    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 417
    .local v4, "msg":Landroid/widget/TextView;
    if-eqz p3, :cond_1

    .line 418
    new-instance v5, Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;

    invoke-direct {v5, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    invoke-static {v4, p3, v5}, Lcom/sec/internal/helper/userconsent/HyperlinkUtils;->processLinks(Landroid/widget/TextView;Ljava/lang/String;Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;)V

    .line 440
    :cond_1
    const-string v5, "1"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, "posButton":Ljava/lang/String;
    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 443
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 445
    :cond_2
    new-instance v7, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;

    invoke-direct {v7, p0, p5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 463
    .end local v6    # "posButton":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 464
    nop

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/internal/ims/config/adapters/DialogAdapter$3;

    invoke-direct {v6, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$3;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 464
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 479
    :cond_4
    new-instance v5, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;

    invoke-direct {v5, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 487
    return-object v0
.end method

.method private createAutoconfigBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 592
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d2

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 595
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 598
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 601
    nop

    .line 602
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$9;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$9;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 601
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 613
    nop

    .line 614
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$10;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$10;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 613
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 624
    return-object v0
.end method

.method private createMsisdnBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 491
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d2

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 494
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    const v2, 0x7f06000b

    if-eqz v1, :cond_0

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 502
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 503
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v2, 0x7f040004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 504
    .local v2, "scrollView":Landroid/widget/ScrollView;
    const v4, 0x7f020006

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 506
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const v5, 0x7f040005

    invoke-virtual {v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 508
    .local v3, "inputBoxWithLabel":Landroid/view/View;
    const v5, 0x7f020005

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 509
    .local v5, "message":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    const v6, 0x7f020001

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 513
    .local v6, "input":Landroid/widget/EditText;
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    const-string/jumbo v8, "skip"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 516
    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :cond_1
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 520
    new-instance v7, Lcom/sec/internal/ims/config/adapters/DialogAdapter$5;

    invoke-direct {v7, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$5;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 540
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 542
    nop

    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;

    invoke-direct {v8, p0, v6}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Landroid/widget/EditText;)V

    .line 542
    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 557
    iget v7, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-static {v7}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    .line 558
    .local v7, "mno":Lcom/sec/internal/constants/Mno;
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isEnableUPInImsprofile()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v8

    if-nez v8, :cond_3

    .line 559
    :cond_2
    nop

    .line 560
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;

    invoke-direct {v9, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 559
    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isEnableUPInImsprofile()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 574
    nop

    .line 575
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060011

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter$8;

    invoke-direct {v9, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$8;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 574
    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 588
    :cond_4
    return-object v0
.end method

.method private isEnableUPInImsprofile()Z
    .locals 2

    .line 628
    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "rcsprofile":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isStringValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "toValidate"    # Ljava/lang/String;

    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerReceivers()V
    .locals 4

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "dialogNotiFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.SHOW_TC_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.SHOW_MSISDN_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method private shallRcsRegisterByDefault(Ljava/lang/String;)Z
    .locals 6
    .param p1, "reject"    # Ljava/lang/String;

    .line 641
    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 642
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_SPAIN:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    nop

    .line 642
    :goto_0
    return v3
.end method

.method private static shouldShowButton(Ljava/lang/String;)Z
    .locals 1
    .param p0, "toValidate"    # Ljava/lang/String;

    .line 305
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private showRcsNotification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 186
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showshowRcsNotification, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "tcNoti":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 191
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    .local v1, "mBuilder":Landroid/app/Notification$Builder;
    const v2, 0x7f010001

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 193
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 194
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 196
    const v4, 0xa807ad

    const/high16 v5, 0x8000000

    const-string/jumbo v6, "phone_id"

    if-eq p1, v4, :cond_1

    const v2, 0x3636a01

    if-eq p1, v2, :cond_0

    .line 217
    sget-object v2, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "showshowRcsNotification: unsupported type!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 207
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.rcs.framework.dialogadapter.action.SHOW_MSISDN_POPUP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "msisdnIntent":Landroid/content/Intent;
    iget v4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr v6, p1

    invoke-static {v4, v6, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 211
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " [SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 213
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f06000a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 215
    goto :goto_0

    .line 198
    .end local v2    # "msisdnIntent":Landroid/content/Intent;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.rcs.framework.dialogadapter.action.SHOW_TC_POPUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v3, "tcIntent":Landroid/content/Intent;
    iget v4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr v6, p1

    invoke-static {v4, v6, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 202
    .restart local v4    # "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p3, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 203
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 204
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 205
    nop

    .line 220
    .end local v3    # "tcIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v4, :cond_2

    .line 221
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 223
    :cond_2
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 224
    .local v2, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    iget v5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr v5, p1

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 225
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    if-eqz v0, :cond_0

    .line 649
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    if-eqz v0, :cond_1

    .line 652
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 654
    :cond_1
    return-void
.end method

.method public getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "accept"    # Ljava/lang/String;
    .param p4, "reject"    # Ljava/lang/String;

    .line 310
    iget v5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "accept"    # Ljava/lang/String;
    .param p4, "reject"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .line 315
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    .line 316
    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    .line 317
    iput-object p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    .line 318
    iput-object p4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    .line 319
    iput p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    .line 321
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    .line 324
    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shouldShowButton(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shouldShowButton(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 330
    :cond_0
    const v0, 0xa807ad

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->showRcsNotification(ILjava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    .line 332
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 333
    .local v0, "isSetupWizardCompleted":Z
    :goto_0
    iget-boolean v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 334
    iget v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    .line 335
    const-string/jumbo v4, "support_notification_for_TnC"

    invoke-static {v2, v4, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    .line 336
    .local v2, "supportNotiBar":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->sendMessage(Landroid/os/Message;)Z

    .line 339
    .end local v2    # "supportNotiBar":Z
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait yes or no"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shallRcsRegisterByDefault(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 341
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    goto :goto_1

    .line 344
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_1

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 349
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive yes or no:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    .line 351
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    return v1

    .line 325
    .end local v0    # "isSetupWizardCompleted":Z
    :cond_4
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "popup dialog cancelled mTitle :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mAccept : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mReject :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return v1
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 363
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mCountryCode:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    .line 366
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    move v0, v2

    .line 367
    .local v0, "isSetupWizardCompleted":Z
    if-eqz v0, :cond_1

    .line 368
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 370
    :cond_1
    const v1, 0x3636a01

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->showRcsNotification(ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait MSISDN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_1

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 379
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mYesNo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSkip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    if-eqz v1, :cond_2

    .line 381
    sget-object v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive MSISDN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 382
    :cond_2
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    if-eqz v1, :cond_3

    .line 383
    const-string/jumbo v1, "skip"

    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    .line 385
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    return-object v1
.end method

.method public getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "oldMsisdn"    # Ljava/lang/String;

    .line 356
    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    .line 357
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting old msisdn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " entered earlier by user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCancel()Z
    .locals 3

    .line 390
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->sendEmptyMessage(I)Z

    .line 392
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "wait Next or Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 398
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextCancel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 229
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 231
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x10100

    const/16 v2, 0x7f6

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 296
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unknown message!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 287
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/AlertDialog;

    .line 288
    .local v0, "dialog2":Landroid/app/AlertDialog;
    if-eqz v0, :cond_7

    .line 289
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 290
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 291
    sget-object v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "dismiss Dialog for getMsisdn"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 272
    .end local v0    # "dialog2":Landroid/app/AlertDialog;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createAutoconfigBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    .line 273
    const-string/jumbo v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "white"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 284
    goto/16 :goto_1

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createMsisdnBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    .line 258
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 261
    const-string/jumbo v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2017A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    goto :goto_1

    .line 234
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v3, "accept, reject dialog create & show"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createAcceptRejectBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 242
    const/4 v0, 0x1

    .line 244
    .local v0, "supportNotiBar":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 245
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 246
    sget-object v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "support_notification_for_TnC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_6
    sget-object v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supportNotiBar : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    .line 253
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 254
    nop

    .line 298
    .end local v0    # "supportNotiBar":Z
    :cond_7
    :goto_1
    return-void
.end method
