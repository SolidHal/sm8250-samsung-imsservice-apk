.class public interface abstract Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;
.super Ljava/lang/Object;
.source "ITelephonyDBColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final BCC:I = 0x81

.field public static final CC:I = 0x82

.field public static final CONTENT_FAX:Landroid/net/Uri;

.field public static final CONTENT_MMS:Landroid/net/Uri;

.field public static final CONTENT_SMS:Landroid/net/Uri;

.field public static final FROM:I = 0x89

.field public static final FROM_INSERT_ADDRESS_TOKEN_STR:Ljava/lang/String; = "insert-address-token"

.field public static final MESSAGE_TYPE_INBOX:I = 0x1

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field public static final MESSAGE_TYPE_SEND_REQ:I = 0x80

.field public static final MESSAGE_TYPE_SENT:I = 0x2

.field public static final READ_MSG:I = 0x1

.field public static final SPAM_MMSSMS_CONTENT_URI:Landroid/net/Uri;

.field public static final SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

.field public static final SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

.field public static final TO:I = 0x97

.field public static final TYPE_DISCRIMINATOR_COLUMN:Ljava/lang/String; = "transport_type"

.field public static final UNREAD_MSG:I = 0x0

.field public static final xml_smil_type:Ljava/lang/String; = "application/smil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_SMS:Landroid/net/Uri;

    .line 12
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_MMS:Landroid/net/Uri;

    .line 13
    const-string v0, "content://im/ft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_FAX:Landroid/net/Uri;

    .line 16
    const-string v0, "content://spammms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    .line 17
    const-string v0, "content://spamsms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    .line 19
    const-string v0, "content://mms-sms/spam-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->SPAM_MMSSMS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
