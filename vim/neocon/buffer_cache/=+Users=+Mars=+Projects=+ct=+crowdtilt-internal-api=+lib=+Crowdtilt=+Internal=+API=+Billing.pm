['ABSTRACT', 'Crowdtilt', 'Billing', 'Logic', 'TODO', 'relocate', 'this', 'class', 'somewhere', 'more', 'appropriate', 'needs', 'complete', 'documentation', 'package', 'Crowdtilt::Internal::API::Billing', 'Dancer', 'syntax', 'template', 'config', 'debug', 'moose', 'Dancer::Plugin::DBIC', 'schema', 'Dancer::Plugin::Stomp', 'stomp_send', 'DateTime', 'Encode', 'encode_utf8', 'HTML::Entities', 'decode_entities', 'LWP::UserAgent', 'Math::Round', 'Moose', 'TryCatch', 'Crowdtilt::Internal::API::Common', 'get_admin_campaign_link', 'get_campaign_link', 'get_new_campaign_link', 'ORG_CROWDTILT', 'to_dollars', 'head1', 'SYNOPSIS', '$billing', 'my_config', 'my_schema', 'tilt_campaign', '$campaign', 'DESCRIPTION', 'This', 'module', 'contains', 'business', 'logic', 'behind', 'billing', 'system', 'intended', 'generic', 'regardless', 'payment', 'processor', 'being', 'used', 'also', 'provides', 'number', 'utility', 'methods', 'that', 'should', 'referenced', 'from', 'other', 'specific', 'modules', 'METHODS', 'head2', 'check_first_contribution', 'Checks', 'user', 'contributed', 'campaign', 'before', '$user', 'Returns', 'contributions', 'than', 'once', 'calculate_admin_fee', 'Calculates', 'much', 'will', 'charge', 'admin', 'Historically', 'method', 'called', 'every', 'contribution', 'However', 'flexible', 'total', 'amount', 'raised', 'opposed', 'each', 'individual', '$campaign_id', '$amount', '$brand_amount', 'cents', 'calculate_user_fee', 'contributor', 'calculate_brand_amount', 'brand', 'receive', 'branded', 'check_limits', 'Throttles', 'down', 'contributors', 'checks', 'they', 'exceed', 'defined', 'limitations', 'Currently', 'there', 'which', 'file', 'under', 'ct_contribution_limit', 'month', 'ct_monthly_contribution_limit', '$user_id', '$contribution_amount', 'within', 'limits', 'returns', 'check', 'failed', 'checktilt', 'tilted', 'provided', 'considered', 'tilt', 'calculations', 'following', 'over', 'item', 'marked', 'case', 'could', 'happen', 'reasons', 'depending', 'ready', 'happens', 'only', 'back', 'send_admin_receipt_email', 'sends', 'receipt', 'email', 'contribution_admin_receipt', '$contribution', 'default', 'Dancer::config', 'lazy', 'Dancer::Plugin::DBIC::schema', '&Dancer', 'Plugin::Stomp::stomp_send', 'common', '$self', '$contribution_data', 'return', 'unless', 'HASH', 'brand_amount', '$user_fee', 'user_fee_amount', '$fee', 'ct_user_charge', 'Check', 'discount', 'apply', '*after', 'would', '$promo', 'promotion_code', '$discount', 'user_discount', '%contribution_data', '$admin_fee_amount', 'admin_fee_amount', 'hard', 'coded', 'crowdtilt', 'api_user', 'does', 'ct_admin_charge', 'then', 'admin_fee', 'equal', 'brand_fee', 'reddit', 'hackish', 'accomplish', 'task', 'giving', 'example', 'right', 'using', 'new_balanced', 'APIs', 'brand_subdomain', '$brand_fee', 'campaign_brand_fields', 'find', 'name', 'fee_percent', 'value', 'admin_discount', 'status', 'postauth_approved', 'credit_released', 'deleted', 'get_column', 'istilted', '$raised_amount', 'raised_amount', 'tiltamount', 'check_hit_target_amount', 'targetamount', 'has_hit_target_amount', '@contributions', 'campaign_id', 'preauth_accepted', 'count', 'current', 'scalar', 'send_admin_contribution_email', '$contribution_id', 'resultset', 'Contribution', '$admin', 'netamount', '$vars', 'ct_hostname', 'campaign_link', 'send_email', 'api_org', 'subject', 'Someone', 'joined', 'your', 'title', 'admin_contribution', 'template_vars', 'Loves', 'firstname', 'send_admin_hit_target_email', 'update_link', 'description', 'Amazing', 'Your', 'reached', 'target', 'admin_target_notification', 'send_receipt_email', '$allow_custom_msg', '$custom_msg', 'campaign_custom_emails', 'first_contribution_email_msg', 'single', 'fmt_amount', '$full_amount', 'contribution_date', 'full_amount', 'new_campaign_link', 'admin_link', 'users', 'custom_msg', '$subject', 'please', 'keep', 'contribution_receipt', 'send_refund_contribution_email', '$refunded_date', 'modification_date', '$last_four_digits', 'card', 'last_four', 'refunded_date', 'last_four_digits', 'been', 'refunded', 'refund_contribution', 'send_non_profit_receipt_email', 'Make', 'sure', 'valid', 'is_non_profit', 'tax_id', 'error', 'sending', 'profit', 'have', '$contribution_date', 'charge_date', 'creation_date', 'Thank', 'deductible', 'non_profit_contribution_receipt', 'send_first_contribution_confirmation_email', 'lastname', 'campaign_title', 'admin_email', 'admin_firstname', 'admin_lastname', 'deliver', 'after', 'to_id', 'first_contribution_confirmation', 'send_contribution_confirmation_email', 'Getting', 'making', 'same', 'time', 'send_tilted_admin_email', 'csv_link', 'contribution_details', 'bank_link', 'profile', 'edit', 'bank', 'Awesome', 'success', 'tilted_admin', 'send_expired_admin_only_campaign_email', 'Campaign', 'tilted_admin_only_campaign', 'send_expired_tilted_admin_email', 'expired_tilted_admin', 'send_expired_not_tilted_admin_email', '$template', 'stats', 'tilt_percent', 'expired_not_tilted_admin_less_than_40', 'else', 'expired_not_tilted_admin_40_or_more', '$original_expiration', 'expiration_original', 'send_failed_contribution_user_reminder', 'contribution_guid', 'guid', 'reply_to', 'reply', '@crowdtilt', 'Action', 'Required', 'processed', 'failed_contribution_user_reminder', 'send_failed_contribution_admin_reminder', '$contributions', 'Heads', 'some', 'couldn', 'charged', 'failed_contribution_admin_reminder', 'send_campaign_extension_email', '$tilt_percent', 'sprintf', 'tilt_amount', 'Admin', 'Reopened', 'campaign_extension', 'limit', 'Passed', 'first', 'monthly', '$month', 'format_datetime', 'time_zone', 'subtract', 'months', 'Find', 'created', 'last', 'active', 'search', 'user_id', 'naveed', 'next', 'line', 'looks', 'backwards', 'second', 'allow', 'third', '$limit', 'metadatas', 'campaign_contribution_limit', 'fourth', 'send_receipt', '$trans_data', 'action', 'normal', 'authorization', 'post', 'here', 'custom', 'messages', 'since', 'wont', 'send', 'emails', 'raise', 'send_successful_bank_setup_email', 'doesn', 'verified', 'account', 'has_bank_account', 'direct', 'deposit', 'successful_bank_setup', 'send_draft_created_email', 'display_tiltamount', 'ct_team_email', 'Draft', 'Created', 'draft_created', 'send_team_tilted_email', 'want', 'these', 'emailed', 'campaigns', 'INTTOOLS', 'admin_campaign_link', 'Tilted', 'team_tilted', 'send_team_reddit_notice_email', 'REDDIT', 'CAMPAIGN', 'team_reddit_notice', 'send_tilted_expired_unverified_team_email', 'ACTION', 'REQUIRED', 'Verify', 'tilted_expired_unverified', 'Double', 'given', 'when', 'tilting', 'passed', '$tilting_cont', 'find_tilting_contribution', 'undef', 'tilted_timestamp', 'update', 'tilt_timestamp', '$msg', 'contribution_id', 'persistent', 'true', 'destination', 'queue', 'body', 'to_json', 'Only', 'campaign_hit_target', '$target_contrib', 'find_hit_target_contribution', 'timestamp', 'hit_target_amount_timestamp', 'target_amount_hit']